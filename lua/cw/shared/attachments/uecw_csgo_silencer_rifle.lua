local att = {}
att.name = "uecw_csgo_silencer_rifle"
att.displayName = "Rifle Suppressor"
att.displayNameShort = "Rifle"
att.isSuppressor = true

att.statModifiers = {OverallMouseSensMult = -0.05,
RecoilMult = -0.25,
DamageMult = -0.15}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_csgo_silencer_rifle")
	att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self.dt.Suppressed = false
end

CustomizableWeaponry:registerAttachment(att)