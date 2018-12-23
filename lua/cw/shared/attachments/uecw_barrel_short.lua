local att = {}
att.name = "uecw_barrel_short"
att.displayName = "Short barrel"
att.displayNameShort = "SHORT"
att.isBG = true
att.SpeedDec = 2

att.statModifiers = {DamageMult = -0.1,
AimSpreadMult = 0.1,
RecoilMult = -0.1,
OverallMouseSensMult = 0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_barrel_short")
	att.description = {[1] = {t = "Short barrel for close quarters engagements.", c = CustomizableWeaponry.textColors.REGULAR}}
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.short)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)