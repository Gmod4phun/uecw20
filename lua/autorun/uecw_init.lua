AddCSLuaFile()

-- UECW pack ammo and shit

if !CustomizableWeaponry then return end

CustomizableWeaponry:registerAmmo(".338 Lapua", ".338 Lapua Magnum Rounds", 8.6, 70)
CustomizableWeaponry:registerAmmo(".357 Magnum", ".357 Magnum Rounds", 9, 33)
CustomizableWeaponry:registerAmmo(".40 S&W", ".40 Smith & Wesson Rounds", 10, 22)
CustomizableWeaponry:registerAmmo(".30 Winchester", ".30 Winchester Rounds", 11.43, 23)

CustomizableWeaponry_G4P_UECW = true -- check for UECW pack if using attachments from it

print("UECW Initialized")
