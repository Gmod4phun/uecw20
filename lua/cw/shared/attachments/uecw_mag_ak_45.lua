local att = {}
att.name = "uecw_mag_ak_45"
att.displayName = "45 Round Magazine"
att.displayNameShort = "45RND"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/rpkmag")
	att.description = {[1] = {t = "Increases mag size to 45 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self:unloadWeapon()
	self.Primary.ClipSize = 45
	self.Primary.ClipSize_Orig = 45
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