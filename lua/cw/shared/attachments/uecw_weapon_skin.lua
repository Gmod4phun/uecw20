local att = {}
att.name = "uecw_weapon_skin"
att.displayName = "Alternative Skin"
att.displayNameShort = "Skin"

att.statModifiers = {}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_weapon_skin")
	att.description = {[1] = {t = "Changes the weapon skin", c = CustomizableWeaponry.textColors.COSMETIC}}
end

function att:attachFunc()
	if self.CW_VM then
		self.CW_VM:SetSkin(1)
	end
end

function att:detachFunc()
	if self.CW_VM then
		self.CW_VM:SetSkin(0)
	end
end

CustomizableWeaponry:registerAttachment(att)