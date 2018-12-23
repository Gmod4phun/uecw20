local att = {}
att.name = "uecw_csgo_silencer_pistol"
att.displayName = "Pistol Suppressor"
att.displayNameShort = "Pistol"
att.isSuppressor = true

att.statModifiers = {RecoilMult = -0.35,
DamageMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_csgo_silencer_pistol")
	att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self.dt.Suppressed = false
end

CustomizableWeaponry:registerAttachment(att)