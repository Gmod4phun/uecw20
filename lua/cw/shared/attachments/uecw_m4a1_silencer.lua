local att = {}
att.name = "uecw_m4a1_silencer" // this attachment is specificaly for the UECW M4A1, wont work on other weapons, at least not properly
att.displayName = "Tactical Suppressor"
att.displayNameShort = "Suppressor"
att.isSuppressor = true
att.isBG = true

att.statModifiers = {RecoilMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("atts/suppressor")
	att.description = {[1] = {t = "Decreases firing noise", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Does not negate any damage", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self.dt.Suppressed = false
	self:setBodygroup(self.SuppressBGs.main, self.SuppressBGs.off)
end

function att:elementRender()
	self:setBodygroup(self.SuppressBGs.main, self.CW_VM:GetBodygroup(self.BarrelBGs.main) + 1)
end
CustomizableWeaponry:registerAttachment(att)