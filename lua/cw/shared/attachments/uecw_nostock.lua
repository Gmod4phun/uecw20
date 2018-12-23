local att = {}
att.name = "uecw_nostock"
att.displayName = "None/Folded Stock"
att.displayNameShort = "None"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {DrawSpeedMult = 0.2,
OverallMouseSensMult = 0.15,
RecoilMult = 0.2}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_g36_stock")
end

function att:attachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.none)
end

function att:detachFunc()
	self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)