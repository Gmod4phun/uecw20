local att = {}
att.name = "uecw_cmag"
att.displayName = "Beta C-Magazine"
att.displayNameShort = "CMAG"

att.statModifiers = {
	ReloadSpeedMult = -0.35,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_cmag")
	att.description = {[1] = {t = "Increases mag size to 100 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	
	-- if self.ActiveAttachments.md_foregrip or self.ActiveAttachments.md_m203 then
		-- self.ForegripOverride = false
	-- else
		-- self.ForegripOverride = true
	-- end
	
	-- self.ForegripParent = att.name
	
	self.Primary.ClipSize = 100
	self.Primary.ClipSize_Orig = 100
	if self.MagBG then
		self:setBodygroup(self.MagBG,1)
	end
end

function att:detachFunc()
	self:unloadWeapon()
	self.ForegripOverride = false
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	if self.MagBG then
		self:setBodygroup(self.MagBG,0)
	end
end

function att:elementRender()

	if self.ActiveAttachments.md_foregrip then
		self.ForegripParent = "md_foregrip"
	elseif self.ActiveAttachments.md_m203 then
		self.ForegripParent = "md_m203"
	elseif self.ActiveAttachments.uecw_bipod then
		self.ForegripParent = "uecw_cmag_bipod"
	else
		self.ForegripParent = att.name
	end
	
	self.ForegripOverride = true
	
end

CustomizableWeaponry:registerAttachment(att)