if not CustomizableWeaponry then return end

AddCSLuaFile()

SWEP.Base = "cw_base"

SWEP.UECWWep = true

SWEP.TSGlass = Material("cw2/attachments/lens/rt")

SWEP.LuaViewmodelRecoil = true
SWEP.FullAimViewmodelRecoil = false
SWEP.SnapToIdlePostReload = false
SWEP.ADSFireAnim = false
SWEP.HipAnim = true

SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}

SWEP.AlternativePos = Vector(0, 0, 0)
SWEP.AlternativeAng = Vector(0, 0, 0)

SWEP.AimViewModelFOV = 70
SWEP.ZoomAmount = 0

local SP = game.SinglePlayer()

local Vec0, Ang0 = Vector(0,0,0), Angle(0,0,0)
local reg = debug.getregistry()
local ManipulateBonePosition, ManipulateBoneAngles = reg.Entity.ManipulateBonePosition, reg.Entity.ManipulateBoneAngles

function SWEP:PrimaryAttack()
	if not self:canFireWeapon(1) then
		return
	end
	
	if self.Owner:KeyDown(IN_USE) then
		if CustomizableWeaponry.quickGrenade.canThrow(self) then
			CustomizableWeaponry.quickGrenade.throw(self)
			return
		end
	end
	
	if not self:canFireWeapon(2) then
		return
	end
	
	if self.dt.Safe then
		self:CycleFiremodes()
		return
	end
	
	if not self:canFireWeapon(3) then
		return
	end
	
	if self.dt.State == CW_AIMING and self.dt.M203Active then
		if self.M203Chamber then
			self:fireM203(IsFirstTimePredicted())
			
			return
		end
	end
	
	mag = self:Clip1()
	CT = CurTime()
	
	if mag == 0 then
		self:EmitSound("CW_EMPTY", 100, 100)
		self:SetNextPrimaryFire(CT + 0.25)
		return
	end
	
	if self.BurstAmount and self.BurstAmount > 0 then
		if self.dt.Shots >= self.BurstAmount then
			return
		end
		
		self.dt.Shots = self.dt.Shots + 1
	end
	
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	if IsFirstTimePredicted() then
		local muzzleData = EffectData()
		muzzleData:SetEntity(self)
		util.Effect("cw_muzzleflash", muzzleData)
		
		if self.dt.Suppressed then
			self:EmitSound(self.FireSoundSuppressed, 105, 100)
		else
			self:EmitSound(self.FireSound, 105, 100)
		end
		
		if self.fireAnimFunc then
			self:fireAnimFunc()
		else
			if self.dt.State == CW_AIMING then
				if self.ADSFireAnim then
					self:playFireAnim()
				end
			else
				self:playFireAnim()
			end
		end
		
		self:FireBullet(self.Damage, self.CurCone, self.ClumpSpread, self.Shots)
		self:makeFireEffects()
		self:MakeRecoil()
		
		if CLIENT then
			self:simulateRecoil()
		end
		
		self:addFireSpread(CT)
		
		if SP and SERVER then
			SendUserMessage("CW_Recoil", self.Owner)
		end
		
		-- apply a global delay after shooting, if there is one
		if self.GlobalDelayOnShoot then
			self.GlobalDelay = CT + self.GlobalDelayOnShoot
		end
	end
	
	CustomizableWeaponry.callbacks.processCategory(self, "postFire")
	
	local suppressAmmoUsage = CustomizableWeaponry.callbacks.processCategory(self, "shouldSuppressAmmoUsage")
	
	if not suppressAmmoUsage then
		self:TakePrimaryAmmo(self.AmmoPerShot)
	end
	
	self:SetNextPrimaryFire(CT + self.FireDelay)
	
	-- either force the weapon back to hip after firing, or don't
	if self.ForceBackToHipAfterAimedShot then
		self.dt.State = CW_IDLE
	end
	
	self.ReloadWait = CT + (self.WaitForReloadAfterFiring and self.WaitForReloadAfterFiring or self.FireDelay)
	
	self:postPrimaryAttack()
	CustomizableWeaponry.callbacks.processCategory(self, "postConsumeAmmo")
	
	if SP and SERVER then
		SendUserMessage("CW_PostFire", self.Owner)
	end
end

function UECW_SlideLock(wep,attTable,CWMenuCategory) -- slideback anim on empty mag
	if !IsValid(wep) then return end

	if wep:Clip1() == 0 and !wep.SlideLocked then
		wep.SlideLocked = true
		wep:sendWeaponAnim("idle_empty")
	end
end
CustomizableWeaponry.callbacks:addNew("postAttachAttachment", "UECW_IDLEANIM_POST_AA", UECW_SlideLock)
CustomizableWeaponry.callbacks:addNew("postDetachAttachment", "UECW_IDLEANIM_POST_DA", UECW_SlideLock)

/*
function UECW_DROPBGS_Update(wep,attTable,CWMenuCategory) -- slideback anim on empty mag
	if !IsValid(wep) then return end

	if CLIENT then
		net.Start("UECW_DroppedWeapon_Bodygroups_CL_TO_SV")
			local bgtab = {}
			
			for i = 0, #wep.CW_VM:GetBodyGroups() - 1 do
				bgtab[i] = wep.CW_VM:GetBodygroup(i)
			end
			
			net.WriteEntity(wep)
			net.WriteTable(bgtab)
		net.SendToServer()
	end
end
CustomizableWeaponry.callbacks:addNew("postAttachAttachment", "UECW_DROPBGS_POST_AA", UECW_DROPBGS_Update)
CustomizableWeaponry.callbacks:addNew("postDetachAttachment", "UECW_DROPBGS_POST_DA", UECW_DROPBGS_Update)
CustomizableWeaponry.callbacks:addNew("deployWeapon", "UECW_DROPBGS_DW", UECW_DROPBGS_Update)
*/

function UECW_SlideLock_Reset(wep,attTable,CWMenuCategory) -- reset slide state after reload
	if !IsValid(wep) then return end
	wep.SlideLocked = false
end
CustomizableWeaponry.callbacks:addNew("finishReload", "UECW_SlideLock_Reset", UECW_SlideLock_Reset)

if SERVER then
	util.AddNetworkString("UECW_IsReloading")
	-- util.AddNetworkString("UECW_DroppedWeapon_Bodygroups_CL_TO_SV")
end

if CLIENT then
	net.Receive("UECW_IsReloading", function()
		local wep = net.ReadEntity()
		
		if IsValid(wep) and wep.CW20Weapon then
			wep.IsUECWReloading = net.ReadBool()
		end
	end)
end

function UECW_SetIsReloading_True(wep,attTable,CWMenuCategory)
	if !IsValid(wep) then return end
	wep.crosshairVisible = function(wep) return false end
	wep.IsUECWReloading = true
	net.Start("UECW_IsReloading")
		net.WriteEntity(wep)
		net.WriteBool(true)
	net.Send(wep.Owner)
end
CustomizableWeaponry.callbacks:addNew("beginReload", "UECW_SetIsReloading_True", UECW_SetIsReloading_True)

function UECW_SetIsReloading_False(wep,attTable,CWMenuCategory)
	if !IsValid(wep) then return end
	wep.crosshairVisible = function(wep) return true end
	wep.IsUECWReloading = false
	net.Start("UECW_IsReloading")
		net.WriteEntity(wep)
		net.WriteBool(false)
	net.Send(wep.Owner)
end
CustomizableWeaponry.callbacks:addNew("finishReload", "UECW_SetIsReloading_False", UECW_SetIsReloading_False)

local function UECW_RenderScene()
	local ply = LocalPlayer()
	local wep = ply:GetActiveWeapon()
	
	if IsValid(wep) and wep.CW20Weapon then
		if wep.UECW_RT then
			wep.UECW_RT(wep)
		end
	end
end
hook.Add("RenderScene", "UECW_RenderScene", UECW_RenderScene)

if CLIENT then

	function SWEP:UECW_RT()
		if self.AttachmentModelsVM.md_sight_front and self.AttachmentModelsVM.md_sight_rear then
			if self.AimPos != self.IronsightPos then -- if we have a sight/scope equiped, hide the front and rear sights
				self.AttachmentModelsVM.md_sight_front.active = false
				self.AttachmentModelsVM.md_sight_rear.active = false
			else
				self.AttachmentModelsVM.md_sight_front.active = true
				self.AttachmentModelsVM.md_sight_rear.active = true
			end
		end
		
		if self.AttsWithRail then
			for att, rail in pairs(self.AttsWithRail) do
				if self.ActiveAttachments[att] and self.AttachmentModelsVM[rail] then
					self.AttachmentModelsVM[rail].active = true
				else
					self.AttachmentModelsVM[rail].active = false
				end
			end
		end

		if self.BulletBGs then
			if string.find(self.Sequence, "empty") or string.find(self.Sequence, "last") then
				self:setBodygroup(self.BulletBGs.main, self.BulletBGs.none)
			else
				self:setBodygroup(self.BulletBGs.main, self.BulletBGs.default)
			end
		end
		
		if self.HandsBG then
			if self.dt.State == CW_CUSTOMIZE then
				self:setBodygroup(self.HandsBG, 1)
			else
				self:setBodygroup(self.HandsBG, 0)
			end
		end
		
		self.ZoomAmount = 0
		
	end
	
end

function SWEP:fireAnimFunc()
	local s1 = ""
	local s2 = ""
	local anim = ""

	if self:Clip1() == 1 then
		s1 = "_last"
	else
		s1 = ""
	end
	
	if self.dt.State == CW_AIMING then
		s2 = "_iron"
	else
		s2 = ""
	end
	
	anim = "fire"..s1..s2
	
	if anim == "fire_last" and !self.Animations.fire_last then
		anim = "fire"
	end
	if anim == "fire_iron" and !self.Animations.fire_iron then
		anim = "fire"
	end
	if anim == "fire_last_iron" and !self.Animations.fire_last_iron then
		if self.Animations.fire_last then
			anim = "fire_last"
		else
			anim = "fire"
		end
	end
	
	if (self.dt.State == CW_AIMING and !self.ADSFireAnim) or (self.dt.State != CW_AIMING and !self.HipAnim) then
		return
	end

	self:sendWeaponAnim(anim, self.FireAnimSpeed)
end

function SWEP:reloadAnimFunc()
	local s1 = ""
	local anim = ""

	if self:Clip1() == 0 then
		s1 = "_empty"
	else
		s1 = ""
	end
	
	anim = "reload"..s1
	
	if anim == "reload_empty" and !self.Animations.reload_empty then
		anim = "reload"
	end
	
	self:sendWeaponAnim(anim, self.ReloadSpeed)
end

function SWEP:drawAnimFunc()
	local s1 = ""
	local anim = ""

	if self:Clip1() == 0 then
		s1 = "_empty"
	else
		s1 = ""
	end
	
	anim = "draw"..s1
	
	if anim == "draw_empty" and !self.Animations.draw_empty then
		anim = "draw"
	end
	
	self:sendWeaponAnim(anim, self.DrawSpeed)
end

if CLIENT then

	function SWEP:_setupAttachmentModel(data)
		data.origPos = data.pos
		data.origAng = data.angle
		
		-- create the attachment model
		data.ent = self:createManagedCModel(data.model, RENDERGROUP_BOTH)
		data.ent:SetNoDraw(true)
		
		-- make it active if it's supposed to be active, or not, if nothing is defined
		data.active = data.active or false
		
		-- scale the model if there is a scaling vector
		-- keep in mind that I scale it once upon creation, in order to not call Matrix and EnableMatrix over and over again each frame
		if data.size then
			data.matrix = Matrix()
			
			data.matrix:Scale(data.size)
			data.ent:EnableMatrix("RenderMultiply", data.matrix)
		end
		
		-- get the bone ID in advance so that we don't have to look it up every frame for every attachment that's active on the weapon
		data._bone = self.CW_VM:LookupBone(data.bone)
		
		-- set bodygroups in case they are defined
		if data.bodygroups then
			for main, sec in pairs(data.bodygroups) do
				data.ent:SetBodygroup(main, sec)
			end
		end
		
		-- set skin in case it is defined -- back from cw 1
		if data.skin then
			data.ent:SetSkin(data.skin)
		end
		
		data.ent:SetupBones()
	end

	function SWEP:setupAttachmentModels()
		if self.AttachmentModelsVM then
			for k, v in pairs(self.AttachmentModelsVM) do
				if v.models then
					for key, data in ipairs(v.models) do
						self:_setupAttachmentModel(data)
					end
				else
					self:_setupAttachmentModel(v)
				end
			end
		end
	end
	
	function SWEP:getTelescopeAngles()
		return self:getMuzzlePosition().Ang
	end
	
	function SWEP:crosshairVisible()
		-- not visible if we're aiming
		if self.dt.State == CW_AIMING and self.FadeCrosshairOnAim then
			return false
		end
		
		-- or are in an inactive state (action in progress/running)
		if self.InactiveWeaponStates[self.dt.State] then
			return false
		end

		-- or have safety turned on
		if self.dt.Safe then
			return false
		end
		
		-- or are in a vehicle
		if self.Owner:InVehicle() then
			return false 
		end
		
		-- or are near a wall
		if self.NearWall then
			return false
		end
		
		-- or are reloading the weapon
		if (self.IsReloading or self.IsFiddlingWithSuppressor) and self.Cycle <= 0.9 then
			return false
		end
		
		-- or are reloading the M203
		if self.reloadingM203 then
			return false
		end
		
		-- or are reloading the weapon - UECW style
		if string.find(self.Sequence, "reload") and self.Cycle <= 0.99 then
			self.IsReloading = true
			return false
		end

		return true
	end

	function SWEP:offsetBones()
		local vm = self.CW_VM
		
		-- if the animation cycle is past reload/draw no offset time of bones, then it falls within the bone offset timeline
		local FT = FrameTime()
		
		if self.AttachmentModelsVM then
			local can = false
			local canModifyBones = self.AttachmentModelsVM.md_foregrip or self.AttachmentModelsVM.md_m203 or self.ForegripOverride
			
			local foregrip = (self.AttachmentModelsVM.md_foregrip and self.AttachmentModelsVM.md_foregrip.active)
			local m203 = (self.AttachmentModelsVM.md_m203 and self.AttachmentModelsVM.md_m203.active)
		
			if foregrip or self.ForegripOverride then
				if self.Sequence == self.Animations.reload or self.Sequence == self.Animations.reload_empty then
					if self.wasEmpty then 
						if self.Cycle >= self.ForeGripOffsetCycle_Reload_Empty then
							can = true
						end
					else
						if self.Cycle >= self.ForeGripOffsetCycle_Reload then
							can = true
						end
					end
				elseif self.Sequence == self.Animations.draw then
					if self.Cycle >= self.ForeGripOffsetCycle_Draw then
						can = true
					end
				else
					can = true
				end
			end
			
			if m203 and not self.dt.M203Active then
				if self.Sequence == self.Animations.reload or self.Sequence == self.Animations.reload_empty then
					if self.wasEmpty then 
						if self.Cycle >= self.M203OffsetCycle_Reload_Empty then
							can = true
						end
					else
						if self.Cycle >= self.M203OffsetCycle_Reload then
							can = true
						end
					end
				elseif self.Sequence == self.Animations.draw then
					if self.Cycle >= self.M203OffsetCycle_Draw then
						can = true
					end
				else
					can = true
				end
			end
			
			local targetTbl = false
			
			-- select the desired offset table
			if can then
				if self.ForegripOverride then
					if self.ForegripOverridePos then
						local desiredTarget = self.ForegripOverridePos[self.ForegripParent]
						
						if desiredTarget then
							targetTbl = desiredTarget
							canModifyBones = true
						end
					end
				else
					if foregrip then
						targetTbl = self.ForeGripHoldPos
					elseif m203 then
						targetTbl = self.M203HoldPos
					end
				end
			end
			
			if not targetTbl then
				can = false
			end
				
			if m203 then
				if self.dt.M203Active or UnPredictedCurTime() < self.M203Time then
					self:offsetM203ArmBone(true)
					ManipulateBonePosition(vm, self.BaseArmBone, self.BaseArmBoneOffset)
					
					return
				else
					if self.curM203Anim ~= self.M203Anims.ready_to_idle then
						self:resetM203Anim()
					end
					
					self:offsetM203ArmBone(false)
				end
			end
					
			if canModifyBones then
				for k, v in pairs(self.vmBones) do
					if can then
						local index = targetTbl[v.boneName]

						v.curPos = LerpVectorCW20(FT * 15, v.curPos, (index and index.pos or Vec0))
						v.curAng = LerpAngleCW20(FT * 15, v.curAng, (index and index.angle or Ang0))
					else
						v.curPos = LerpVectorCW20(FT * 15, v.curPos, Vec0)
						v.curAng = LerpAngleCW20(FT * 15, v.curAng, Ang0)
					end
					
					if v.overridePos then
						v.curPos = v.overridePos
					end
					
					if v.overrideAng then
						v.curPos = v.overrideAng
					end
					
					ManipulateBonePosition(vm, v.bone, v.curPos)
					ManipulateBoneAngles(vm, v.bone, v.curAng)
				end
			end
		end
		
		if self.BoltBoneID then
			local can = true
			local recoverySpeed = self.BoltBonePositionRecoverySpeed
			
			if self.BoltShootOffset then
				if self.HoldBoltWhileEmpty then
					if self:Clip1() == 0 then
						if self.Sequence ~= self.EmptyBoltHoldAnimExclusion then
							if (self.IsReloading and self.Cycle > 0.98) or not self.IsReloading then
								can = false
								self.CurBoltBonePos = self.BoltShootOffset * 1
							end
						end
					end
				end
				
				ManipulateBonePosition(vm, self.BoltBoneID, self.CurBoltBonePos)
			end
			
			if self.OffsetBoltDuringNonEmptyReload then
				if self.IsReloading and self.Cycle <= self.StopReloadBoneOffset and self:Clip1() > 0 then
					self.CurBoltBonePos = math.ApproachVector(self.CurBoltBonePos, self.BoltReloadOffset, FT * self.ReloadBoltBonePositionMoveSpeed)
					can = false
				else
					if can then
						recoverySpeed = self.ReloadBoltBonePositionRecoverySpeed
					end
				end
				
				ManipulateBonePosition(vm, self.BoltBoneID, self.CurBoltBonePos)
			end

			if can then
				self.CurBoltBonePos = math.ApproachVector(self.CurBoltBonePos, Vec0, FT * recoverySpeed)
			end
		end
	end
	
	function SWEP:CreateShell(sh)
		if self.Owner:ShouldDrawLocalPlayer() or self.NoShells then
			return
		end
		
		sh = self.Shell or sh
		vm = self.CW_VM
		
		att = vm:GetAttachment(self.ShellAttachmentName and vm:LookupAttachment(self.ShellAttachmentName) or 2)
		
		if att then
			if self.ShellDelay then
				CustomizableWeaponry.actionSequence.new(self, self.ShellDelay, nil, function()
					att = vm:GetAttachment(self.ShellAttachmentName and vm:LookupAttachment(self.ShellAttachmentName) or 2)
					
					if self.InvertShellEjectAngle then
						dir = -att.Ang:Forward()
					else
						dir = att.Ang:Forward()
					end
					
					if self.ShellPosOffset then
						att.Pos = att.Pos + (self.ShellPosOffset.x) * att.Ang:Right()
						att.Pos = att.Pos + (self.ShellPosOffset.y) * att.Ang:Forward()
						att.Pos = att.Pos + (self.ShellPosOffset.z) * att.Ang:Up()
					end
			
					CustomizableWeaponry.shells.make(self, att.Pos + dir * self.ShellOffsetMul, EyeAngles(), dir * 200, 0.6, 10)
				end)
			else
				att = vm:GetAttachment(self.ShellAttachmentName and vm:LookupAttachment(self.ShellAttachmentName) or 2)
				
				if self.InvertShellEjectAngle then
					dir = -att.Ang:Forward()
				else
					dir = att.Ang:Forward()
				end
				
				if self.ShellPosOffset then
					att.Pos = att.Pos + (self.ShellPosOffset.x) * att.Ang:Right()
					att.Pos = att.Pos + (self.ShellPosOffset.y) * att.Ang:Forward()
					att.Pos = att.Pos + (self.ShellPosOffset.z) * att.Ang:Up()
				end
				
				CustomizableWeaponry.shells.make(self, att.Pos + dir * self.ShellOffsetMul, EyeAngles(), dir * 200, 0.6, 10)
			end
		end
	end

end
