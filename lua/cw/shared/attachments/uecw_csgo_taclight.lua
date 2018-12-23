local att = {}
att.name = "uecw_csgo_taclight"
att.displayName = "Tactical Light"
att.displayNameShort = "Taclight"

if CLIENT then
	att.displayIcon = surface.GetTextureID("gmod4phun/uecw/icons/upgr_csgo_taclight")
	att.description = {[1] = {t = "Attaches a tactical light.", c = CustomizableWeaponry.textColors.POSITIVE},
	[2] = {t = "Just pretend it actually works, duh.", c = CustomizableWeaponry.textColors.COSMETIC}}
end

CustomizableWeaponry:registerAttachment(att)