local att = {}
att.name = "uecw_g36k_barrel"
att.displayName = "G36K Barrel"
att.displayNameShort = "G36K"
att.isBG = true

att.statModifiers = {RecoilMult = -0.15,
AimSpreadMult = -0.10,
DrawSpeedMult = 0.20}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_g36k_barrel")
end

function att:attachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.G36K)
end

function att:detachFunc()
	self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)