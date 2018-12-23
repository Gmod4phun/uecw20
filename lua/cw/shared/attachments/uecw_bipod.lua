local att = {}
att.name = "uecw_bipod"
att.displayName = "Deployable Bipod"
att.displayNameShort = "Bipod"

att.statModifiers = {OverallMouseSensMult = -0.1,
DrawSpeedMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_bipod")
	att.description = {[1] = {t = "When deployed:", c = CustomizableWeaponry.textColors.REGULAR},
	[2] = {t = "Decreases recoil by 70%", c = CustomizableWeaponry.textColors.POSITIVE},
	[3] = {t = "Decreases aim breathing movement", c = CustomizableWeaponry.textColors.POSITIVE},
	[4] = {t = "Greatly increases hip fire accuracy", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.BipodInstalled = true
end

function att:detachFunc()
	self.BipodInstalled = false
	self:restoreSound()
end
	
function att:elementRender()
	local bipod = self.AttachmentModelsVM[att.name].ent	
	if self.dt.BipodDeployed and self.DeployAngle then
		if bipod:GetBodygroup(0) != 1 then
			self:EmitSound("gmod4phun/uecw/bipod_down"..math.random(1,2)..".wav")
			bipod:SetBodygroup(0,1)
			self.AimBreathingIntensity = 0.25
		end
	else
		if bipod:GetBodygroup(0) != 0 then
			self:EmitSound("gmod4phun/uecw/bipod_up"..math.random(1,2)..".wav")
			bipod:SetBodygroup(0,0)
			self.AimBreathingIntensity = 1
		end
	end
end

CustomizableWeaponry:registerAttachment(att)