if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M16A4"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = true
--	SWEP.MuzzleAtachment = 1
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.75
	
	SWEP.MagInsertOffsetCycle = 0.45
	SWEP.MagInsertOffsetCycle_Empty = 0.25
	
	SWEP.M203OffsetCycle_Reload = 0.9
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-2.171, -4.5, 0.3)
	SWEP.IronsightAng = Vector(0.07, 0.01, 0)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
		
	SWEP.EoTechPos = Vector(-2.17, -2.437, 0.25)
	SWEP.EoTechAng = Vector(0.067, 0, 0)

	SWEP.AimpointPos = Vector(-2.1513, -2.415, 0.3778)
	SWEP.AimpointAng = Vector(-0.1145, 0.0766, 0)

	SWEP.MicroT1Pos = Vector(-2.19, -4.712, 0.68)
	SWEP.MicroT1Ang = Vector(-1.938, 0, -0.217)

	SWEP.CmorePos = Vector(-2.1855, -2.2037, 0.5861)
	SWEP.CmoreAng = Vector(-1.0723, 0, 0)

	SWEP.ReflexPos = Vector(-2.1551, -1.951, 0.653)
	SWEP.ReflexAng = Vector(-0.9466, 0.068, 0)

	SWEP.TrijiconPos = Vector(-2.1499, -2.5061, 0.3076)
	SWEP.TrijiconAng = Vector(-0.4505, 0.0868, 0)

	SWEP.ACOGPos = Vector(-2.1723, -2.9456, 0.3166)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(-2.1684, -3.2071, 0.3292)
	SWEP.CSGOACOGAng = Vector()

	SWEP.ELCANPos = Vector(-2.1556, -2.0745, 0.3058)
	SWEP.ELCANAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.UECWFoldSightPos = Vector(-2.161, -4.5, 0.319)
	SWEP.UECWFoldSightAng = Vector(0.15, 0.1, 0)

	SWEP.CustomizePos = Vector(17.7767, -14.754, 1.46)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-2.146, -2.0745, -0.3966),
			[2] = Vector(-0.7465, 0.0487, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-2.1741, -1.9099, -0.5412),
			[2] = Vector(-0.3108, 0, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0.04, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/gmod4phun/uecw/attachments/rail_larue.mdl", pos = Vector(0, 2.9492, 3.3815), angle = Angle(2, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "smdimport001", material = ""},
		["uecw_foldsight_rear"] = {model = "models/gmod4phun/uecw/attachments/foldsight_rear.mdl", pos = Vector(0.0145, 0.7683, 3.4638), angle = Angle(0, 0, 1.5), size = Vector(0.75, 0.75, 0.75), bone = "smdimport001", material = ""},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0, 0.0853, 0.1049), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Magazine001", skin = 2},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0, 0.0853, 0.1049), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Magazine001", material = ""},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0, 0.0853, 0.1049), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Magazine001", material = ""},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0, 0.0853, 0.1049), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Magazine001", material = ""},
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0, 0.0853, 0.1049), angle = Angle(0, -90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Magazine001", skin = 2},
		["uecw_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "smdimport001", rel = "", pos = Vector(-1.361, -7.801, 3.45), angle = Angle(0, -90, 0), size = Vector(1.059, 1.059, 1.059), color = Color(255, 255, 255, 255)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "smdimport001", pos = Vector(0, 4.82, 0), angle = Angle(0, 0, 2), size = Vector(0.75, 0.75, 0.75)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "smdimport001", rel = "", pos = Vector(0.019, 2.2, 3.56), angle = Angle(0, -180, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.452, -2.556, -0.7854), angle = Angle(0, 0, 2), size = Vector(0.75, 0.75, 0.75), bone = "smdimport001"},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", pos = Vector(-0.225, 9.715, 3.15), angle = Angle(2, 90, 0), size = Vector(0.699, 0.699, 0.699), bone = "smdimport001"},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", pos = Vector(2.299, -6.8871, 5.3197), angle = Angle(-2, -90, 0), size = Vector(1, 1, 1), bone = "smdimport001", animated = true},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-0.281, -3.027, -0.9674), angle = Angle(0, 0, 1.85), size = Vector(0.8, 0.8, 0.8), bone = "smdimport001", material = ""},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0.0308, 2.1981, 3.3505), angle = Angle(-1.2, -90, 0), size = Vector(0.6, 0.6, 0.6), bone = "smdimport001", material = ""},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", pos = Vector(-0.24, -4.388, -1.9888), angle = Angle(0, 0, 2.25), size = Vector(1, 1, 1), bone = "smdimport001", material = ""},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0, 2.7397, 3.38), angle = Angle(-1.9, -90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport001", material = ""},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(0.273, -8.9601, -7.4051), angle = Angle(0.75, -90, 0), size = Vector(1, 1, 1), bone = "smdimport001", material = ""},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0.0174, 2.3319, 3.6419), angle = Angle(-1.2, -90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport001", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0.01, 2.5246, 3.4031), angle = Angle(-1.9, -90, 0), size = Vector(0.765, 0.765, 0.765), bone = "smdimport001", material = ""},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, 18.1545, 1.7688), angle = Angle(-3, -90, 0), size = Vector(1, 1, 1), bone = "smdimport001"},
		["uecw_bipod"] = {model = "models/gmod4phun/uecw/attachments/bipod.mdl", pos = Vector(0.1, 10.8, 0.35), angle = Angle(-2, -90, 0), size = Vector(1, 1, 1), bone = "smdimport001"},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0, 2.7397, 3.38), angle = Angle(-1.9, -90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport001", material = ""},
	}
	
	SWEP.AttachmentPosDependency = {
		["uecw_bipod"] = {["uecw_cmag"] = Vector(0.1, 12.4, 0.35)},
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(), angle = Angle(0, 42.713, 0)},
		["Bip01 L Finger4"] = {pos = Vector(), angle = Angle(0, 26.148, 0)},
		["Bip01 L Finger21"] = {pos = Vector(), angle = Angle(0, 10.164, 0)},
		["Bip01 L Finger1"] = {pos = Vector(), angle = Angle(6.522, 83.597, 0)},
		["Bip01 L Finger32"] = {pos = Vector(), angle = Angle(0, 29.565, 0)},
		["Bip01 L Finger2"] = {pos = Vector(), angle = Angle(2.411, 57.007, 0)},
		["Bip01 L Finger12"] = {pos = Vector(), angle = Angle(0, -9.195, 0)},
		["Bip01 L Hand"] = {pos = Vector(), angle = Angle(4.7819, 35.3154, -14.4535)},
		["Bip01 L Clavicle"] = {pos = Vector(-3.2545, 2.2615, -2.9148), angle = Angle(-55.446, 20.2044, 0)},
		["Bip01 L Finger0"] = {pos = Vector(), angle = Angle(23.2, 16.545, 0)},
		["Bip01 L Forearm"] = {pos = Vector(), angle = Angle(0, 0, 42.41)},
		["Bip01 L Finger02"] = {pos = Vector(), angle = Angle(0, 71.308, 0)},
		["Bip01 L Finger11"] = {pos = Vector(), angle = Angle(0, 25.795, 0)},
		["Bip01 L Finger01"] = {pos = Vector(), angle = Angle(0, 18.395, 0)},
		["Bip01 L Finger42"] = {pos = Vector(), angle = Angle(0, 31.427, 0)},
	}
	
	SWEP.CMagHoldPos = {
		["Bip01 L UpperArm"] = {pos = Vector(0, -2, -0.5), angle = Angle()},
	}

	SWEP.ForegripOverridePos = {
		["uecw_cmag_bipod"] = SWEP.CMagHoldPos,
		["uecw_cmag"] = SWEP.CMagHoldPos,
		["md_foregrip"] = SWEP.ForeGripHoldPos,
		["md_m203"] = SWEP.M203HoldPos,
	}

	
	SWEP.BoltBone = "Bolt001"
	SWEP.BoltShootOffset = Vector(-1.75, 0, 0)

	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(2, 180, 0)

	SWEP.MagBG = 8
	
	SWEP.AttsWithRail = {uecw_trijicon = "md_rail"}
	
	SWEP.HandsBG = 7
	
end

SWEP.SightBGs = {main = 1, none = 1}
SWEP.SuppressBGs = {main = 2, off = 0, on = 1}
SWEP.StockBGs = {main = 11, regular = 0, heavy = 1, sturdy = 1}
SWEP.LuaViewmodelRecoil = true

SWEP.CustomizationMenuScale = 11.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {1200, -700},  atts = {"uecw_foldsight",  "uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Barrel extension", offset = {200, -800}, atts = {"md_saker", "uecw_csgo_silencer_rifle", "uecw_bg_silencer"}},
	[3] = {header = "Handguard", offset = {-300, -400}, atts = {"md_foregrip", "uecw_bipod", "md_m203"}},
	[4] = {header = "Magazine", offset = {-200, 100}, atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	[5] = {header = "Rail", offset = {800, 250}, atts = {"md_anpeq15"}},
	[6] = {header = "Stock", offset = {1600, 400}, atts = {"bg_ar15sturdystock"}},
	["+reload"] = {header = "Ammo", offset = {2400, -100}, atts = {"am_magnum", "am_matchgrade"}}}
	
--SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "idle",
	fire_iron = "idle",
	fire_last_iron = "idle",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.55, sound = "UECW_M16A4_MAGOUT"},
	[2] = {time = 1.35, sound = "UECW_M16A4_MAGIN"},
	[3] = {time = 2.0, sound = "UECW_M16A4_BOLTBACK"},
	[4] = {time = 2.35, sound = "UECW_M16A4_BOLTFORWARD"}},
	reload_wet = {[1] = {time = 0.55, sound = "UECW_M16A4_MAGOUT"},
	[2] = {time = 1.35, sound = "UECW_M16A4_MAGIN"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"3burst", "semi"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_m16a4.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_m16a4.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-94, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.066666666666667
SWEP.FireSound = "UECW_M16A4_FIRE"
SWEP.FireSoundSuppressed = "UECW_M16A4_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 30
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.9
SWEP.ReloadTime_Empty = 3.1
SWEP.ReloadHalt = 1.9
SWEP.ReloadHalt_Empty = 3.1
SWEP.SnapToIdlePostReload = true

end