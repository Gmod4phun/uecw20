local att = {}
att.name = "uecw_usp_match"
att.displayName = "Match Barrel"
att.displayNameShort = "Match"
att.isSuppressor = false
att.isBG = true

att.statModifiers = {RecoilMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_usp_match")
	att.description = {[1] = {t = "USP Match Barrel Variant", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
if CLIENT then
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.match)
end
end

function att:detachFunc()
if CLIENT then
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end
end
CustomizableWeaponry:registerAttachment(att)