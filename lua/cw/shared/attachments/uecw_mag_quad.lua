local att = {}
att.name = "uecw_mag_quad"
att.displayName = "Surefire 60 Round Magazine"
att.displayNameShort = "Surefire"

att.statModifiers = {
	ReloadSpeedMult = -0.15,
	OverallMouseSensMult = -0.1
}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/ar1560rndmag")
	att.description = {[1] = {t = "Increases mag size to 60 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 60
	self.Primary.ClipSize_Orig = 60
	if self.MagBG then
		self:setBodygroup(self.MagBG,1)
	end
end

function att:detachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
	self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
	if self.MagBG then
		self:setBodygroup(self.MagBG,0)
	end
end

CustomizableWeaponry:registerAttachment(att)