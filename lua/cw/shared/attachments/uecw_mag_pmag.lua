local att = {}
att.name = "uecw_mag_pmag"
att.displayName = "P-Magazine"
att.displayNameShort = "PMAG"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_pmag")
	att.description = {[1] = {t = "Magpul 30 round Tactical Magazine.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

local magname1 = (att.name).."_1"
local magname2 = (att.name).."_2"

function att:setMagsActive(b)
	if CLIENT then
		local mag = self.AttachmentModelsVM[att.name]
		local mag1 = self.AttachmentModelsVM[magname1]
		local mag2 = self.AttachmentModelsVM[magname2]
		
		if mag then mag.active = b end
		if mag1 then mag1.active = b end
		if mag2 then mag2.active = b end
	end
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 30
	self.Primary.ClipSize_Orig = 30
	
	att.setMagsActive(self, true)

	if self.MagBG then
		self:setBodygroup(self.MagBG, 1)
	end
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL

	if self.MagBG then
		self:setBodygroup(self.MagBG, 0)
	end
	
	att.setMagsActive(self, false)
end

function att:elementRender()
	local mag, ammo = self:Clip1(), self.Owner:GetAmmoCount(self.Primary.Ammo)
	local toreload = 0
	
	if mag > 0 then
		if ammo >= self.Primary.ClipSize - mag then
			toreload = math.Clamp(self.Primary.ClipSize, 0, self.Primary.ClipSize)
		else
			toreload = math.Clamp(mag + ammo, 0, self.Primary.ClipSize)
		end
	else
		if ammo >= self.Primary.ClipSize then
			toreload = math.Clamp(self.Primary.ClipSize, 0, self.Primary.ClipSize)
		else
			toreload = math.Clamp(ammo, 0, self.Primary.ClipSize)
		end
	end
	
	local empty = mag == 0
	local start = 18
	local num = start - toreload
	num = math.Clamp(num, 0, 8)
	
	local mag_ent, mag_ent_1, mag_ent_2
	
	if !self.HasTwoMagModels then
		local mag_single = self.AttachmentModelsVM[att.name]
		if mag_single then
			mag_ent = mag_single.ent
		end
		if IsValid(mag_ent) then
			if self.IsUECWReloading and ((!empty and self.MagInsertOffsetCycle and self.Cycle > self.MagInsertOffsetCycle) or (empty and self.MagInsertOffsetCycle_Empty and self.Cycle > self.MagInsertOffsetCycle_Empty)) then
				mag_ent:SetBodygroup(1, num)
			else
				mag_ent:SetBodygroup(1, math.Clamp(start - mag, 0, 8))
			end
		end
	else
		local mag_1 = self.AttachmentModelsVM[magname1]	// old mag to remove
		if mag_1 then
			mag_ent_1 = mag_1.ent
		end
		
		if IsValid(mag_ent_1) then
			mag_ent_1:SetBodygroup(1, math.Clamp(start - mag, 0, 8))
		end
		
		local mag_2 = self.AttachmentModelsVM[magname2]	// new mag to insert
		if mag_2 then
			mag_ent_2 = mag_2.ent
		end
		if IsValid(mag_ent_2) then
			mag_ent_2:SetBodygroup(1, num)
		end
	end
end

CustomizableWeaponry:registerAttachment(att)
