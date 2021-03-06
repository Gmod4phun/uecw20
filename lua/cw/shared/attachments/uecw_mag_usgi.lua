local att = {}
att.name = "uecw_mag_usgi"
att.displayName = "USGI Magazine"
att.displayNameShort = "USGI"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_usgimag")
	att.description = {[1] = {t = "Increases mag size to 35 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 35
	self.Primary.ClipSize_Orig = 35
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