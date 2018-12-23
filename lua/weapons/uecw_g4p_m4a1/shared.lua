if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M4A1"
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
	SWEP.ForeGripOffsetCycle_Draw = 0.75
	SWEP.ForeGripOffsetCycle_Reload = 0.83
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.MagInsertOffsetCycle = 0.3
	SWEP.MagInsertOffsetCycle_Empty = 0.25
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-2.895, -3.319, 0.547)
	SWEP.IronsightAng = Vector(0.079, 0, -0.327)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)

	SWEP.EoTechPos = Vector(-2.89, -1.311, 0.45)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-2.846, -2.488, 0.568)
	SWEP.AimpointAng = Vector(0, 0.2, 0)
	
	SWEP.MicroT1Pos = Vector(-2.911, -2.8, 0.879)
	SWEP.MicroT1Ang = Vector(-1, 0, 0)

	SWEP.CmorePos = Vector(-2.8887, -2.787, 0.5906)
	SWEP.CmoreAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-2.8988, -0.3602, 0.9065)
	SWEP.ReflexAng = Vector(-1.2823, 0, 0)

	SWEP.TrijiconPos = Vector(-2.8287, -2.7136, 0.4584)
	SWEP.TrijiconAng = Vector(0, 0.2392, 0)

	SWEP.ACOGPos = Vector(-2.901, -0.6963, 0.3639)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(-2.9036, -1.5793, 0.5635)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.8803, 0.7337, 0.1321)
	SWEP.ELCANAng = Vector()

	SWEP.FAS2AimpointPos = Vector(-2.7945, -2.8, 0.4217)
	SWEP.FAS2AimpointAng = Vector(-0.1691, 0.4417, 0)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.UECWFoldSightPos = Vector(-2.881, -3.3, 0.4)
	SWEP.UECWFoldSightAng = Vector(0.839, 0.07, 0)

	SWEP.CustomizePos = Vector(16.7371, -13.6405, 1.5607)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-2.8641, 0.7337, -0.8378),
			[2] = Vector(0, 0.0562, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-2.901, -0.6963, -0.614),
			[2] = Vector(-0.1917, 0.0295, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0.04, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", pos = Vector(2.5826, -18.901, -2.9166), angle = Angle(0, -90, -90), size = Vector(0.65, 0.65, 0.65), bone = "|*M4| - Receiver"},
		["md_larue"] = {model = "models/gmod4phun/uecw/attachments/rail_larue.mdl", pos = Vector(1.6874, -8.9388, -1.6855), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = ""},
		["uecw_foldsight_rear"] = {model = "models/gmod4phun/uecw/attachments/foldsight_rear.mdl", pos = Vector(1.685, -7.34, -1.71), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Receiver", material = ""},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(1.65, -9.95, -4), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Magazine", material = ""},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(1.65, -9.95, -4), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Magazine", material = ""},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(1.65, -9.95, -4), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Magazine", material = ""},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(1.65, -9.95, -4), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Magazine", material = ""},
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(1.65, -9.95, -4), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "|*M4| - Magazine", material = ""},
		["md_fas2_aimpoint"] = {model = "models/c_fas2_aimpoint.mdl", pos = Vector(1.6232, -11.9852, -2.2366), angle = Angle(0, 90, 0), size = Vector(1.2, 1.2, 1.2), bone = "|*M4| - Receiver", material = "", bodygroups = {[2] = 1,[3] = 2,[4] = 1,}, animated = true},
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "|*M4| - Receiver", rel = "", pos = Vector(1.425, 2.50, -13.02), angle = Angle(3.5, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(2.021, -3.3884, -6.7964), angle = Angle(0, 180, 0), size = Vector(0.9, 0.9, 0.9), bone = "|*M4| - Receiver", material = ""},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(1.6567, -8.7, -1.7083), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = "", skin = 1},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(1.6928, -9.35, -1.7083), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = ""},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "|*M4| - Receiver", rel = "", pos = Vector(1.907, -2.337, -7.381), angle = Angle(180, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(1.2955, -26.1199, -5.75), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), bone = "|*M4| - Receiver", material = ""},
		["uecw_bipod"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "|*M4| - Receiver", rel = "", pos = Vector(1.731, -18.768, -4.125), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(1.6928, -9.35, -1.7083), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = ""},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "|*M4| - Receiver", rel = "", pos = Vector(1.68, -9.261, -0.34), angle = Angle(0, 0, -180), size = Vector(0.8, 0.8, 0.8)},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "|*M4| - Receiver", rel = "", pos = Vector(1.675, -9.2, -1.539), angle = Angle(180, 0, -180), size = Vector(0.4, 0.4, 0.4)},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(1.6493, -8.5056, -1.4607), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(1.6928, -9.35, -1.7083), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "|*M4| - Receiver", material = ""},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(1.6755, -23.1, -2.7395), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), bone = "|*M4| - Receiver"},
	}
	
	SWEP.AttachmentPosDependency = {
		["md_saker"] = {["uecw_barrel_short"] = Vector(1.68, -5.84, -0.34), ["bg_longbarrel"] = Vector(1.68, -11.261, -0.34), ["bg_longris"] = Vector(1.68, -9.84, -0.34)},
		["uecw_csgo_silencer_rifle"] = {["uecw_barrel_short"] = Vector(1.6755, -19.65, -2.7395), ["bg_longbarrel"] = Vector(1.6755, -25.25, -2.7395), ["bg_longris"] = Vector(1.6755, -23.1, -2.7395)}
	}
	
	SWEP.ForeGripHoldPos = {
		['Left_L_Arm'] = {pos = Vector(1.2, -0.4, 1.72), angle = Angle(0, 0, 90)},
		['Left4'] = {pos = Vector(0, -0.15000000596046, 0), angle = Angle(60.14400100708, -13.27499961853, 0)},
		['Left5'] = {pos = Vector(0, 0, 0), angle = Angle(19.218999862671, -3.8310000896454, 0)},
		['Left7'] = {pos = Vector(0, 0, 0), angle = Angle(42.444000244141, -8.8680000305176, 0)},
		['Left9'] = {pos = Vector(0, 0, 0), angle = Angle(13.449999809265, 0, 0)},
		['Left10'] = {pos = Vector(0, 0, 0), angle = Angle(31.812000274658, -1.3999999761581, 0)},
		['Left12'] = {pos = Vector(0, 0, 0), angle = Angle(24.488000869751, 0, 0)},
		['Left13'] = {pos = Vector(0, 0, 0), angle = Angle(19.91900062561, 0, 0)},
		['Left1'] = {pos = Vector(0, 0, 0), angle = Angle(27.77499961853, 0.98199999332428, 0)},
		['Left2'] = {pos = Vector(0, 0, 0), angle = Angle(0, 23.14999961853, 0)},
		['Left3'] = {pos = Vector(0, 0, 0), angle = Angle(0, 44.89400100708, 0)} 
	}
	
	SWEP.CMagHoldPos = {
		["Left_L_Arm"] = {pos = Vector(0.9964, -0.5983, -0.3012), angle = Angle()},
	}
	
	SWEP.ForegripOverridePos = {
		["uecw_cmag_bipod"] = SWEP.CMagHoldPos,
		["uecw_cmag"] = SWEP.CMagHoldPos,
		["md_foregrip"] = SWEP.ForeGripHoldPos,
	}

	SWEP.BoltBone = "|*M4| - Shell Ejection Port"
	SWEP.BoltShootOffset = Vector(-2, 0, 0)
	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(2, 180, 0)
	
	SWEP.AttsWithRail = {uecw_trijicon = "md_larue"}
end

SWEP.MagBG = 4
SWEP.HandsBG = 6
SWEP.SightBGs = {main = 1, none = 1}
SWEP.BarrelBGs = {main = 3, longris = 3, long = 2, short = 1, regular = 0}
SWEP.SuppressBGs = {main = 2, off = 0}
SWEP.StockBGs = {main = 5, regular = 0, heavy = 1, none = 2}
SWEP.LuaViewmodelRecoil = true
SWEP.LuaVMRecoilAxisMod = {hor = 0, vert = 1, roll = 0.5, forward = 1}
SWEP.HipAnim = true
SWEP.CustomizationMenuScale = 0.012

SWEP.Attachments = {[1] = {header = "Sight", offset = {1100, -600},  atts = {"uecw_foldsight", "uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}},
	[2] = {header = "Barrel", offset = {300, -650}, atts = {"uecw_barrel_short", "bg_longbarrel", "bg_longris"}},
	[3] = {header = "Barrel extension", offset = {-400, -600}, atts = {"md_saker", "uecw_csgo_silencer_rifle", "uecw_m4a1_silencer"}},
	[4] = {header = "Handguard", offset = {-500, -100}, atts = {"md_foregrip", "uecw_bipod"}, dependencies = {bg_longris = true}},
	[5] = {header = "Magazine", offset = {-400, 400}, atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	[6] = {header = "Rail", offset = {600, 250}, atts = {"md_anpeq15"}, dependencies = {bg_longris = true}},
	[7] = {header = "Stock", offset = {1900, -50}, atts = {"bg_ar15heavystock"}},
	["+reload"] = {header = "Ammo", offset = {1300, 400}, atts = {"am_magnum", "am_matchgrade"}}}

if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 7, "md_fas2_aimpoint" )
end

SWEP.Animations = {fire = "idle",
	fire_iron = {"shoot1","shoot2","shoot3"},
	fire_last_iron = {"shoot1","shoot2","shoot3"},
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw_unsil"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.4, sound = "UECW_M4A1_MAGOUT"},
	[2] = {time = 1.4, sound = "UECW_M4A1_MAGIN"},
	[3] = {time = 2.2, sound = "UECW_M4A1_BOLTBACK"},
	[4] = {time = 2.4, sound = "UECW_M4A1_BOLTFORWARD"}},

	reload_wet = {[1] = {time = 0.35, sound = "UECW_M4A1_MAGOUT"},
	[2] = {time = 1.2, sound = "UECW_M4A1_MAGIN"}},
	
	draw_unsil = {{time = 0.01, sound = "UECW_XM8_CLOTH"},
	{time = 0.2, sound = "UECW_M4A1_BOLTBACK"},
	{time = 0.45, sound = "UECW_M4A1_BOLTFORWARD"}}
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_m4a1.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_m4a1.mdl"
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
SWEP.FireSound = "UECW_M4A1_FIRE"
SWEP.FireSoundSuppressed = "UECW_M4A1_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.042
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt = 2
SWEP.ReloadHalt_Empty = 3.2
SWEP.SnapToIdlePostReload = true

end