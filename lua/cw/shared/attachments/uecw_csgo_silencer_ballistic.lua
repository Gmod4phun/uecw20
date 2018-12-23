local att = {}
att.name = "uecw_csgo_silencer_ballistic"
att.displayName = "Ballistic Suppressor"
att.displayNameShort = "Ballistic"
att.isSuppressor = true

att.statModifiers = {OverallMouseSensMult = -0.3,
RecoilMult = -0.2,
DamageMult = -0.05}

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_csgo_silencer_ballistic")
	att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
	self.dt.Suppressed = true
end

function att:detachFunc()
	self.dt.Suppressed = false
end

CustomizableWeaponry:registerAttachment(att)