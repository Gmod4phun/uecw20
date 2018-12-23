if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "XM8"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "i"
	killicon.AddFont("cw_g3a3", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 4, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8
	SWEP.FireMoveMod = 0.6

	SWEP.IronsightPos = Vector(2.556, -3.543, 0.778)
	SWEP.IronsightAng = Vector(1.143, 0, 0)

	SWEP.EoTechPos = Vector(2.579, -5.119, -0.3696)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(2.5389, -4.6258, -0.1193)
	SWEP.AimpointAng = Vector()

	SWEP.MicroT1Pos = Vector(2.569, -6.2, 0.019)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(2.5801, -4.6964, -0.3415)
	SWEP.ACOGAng = Vector()

	SWEP.SG1Pos = Vector(-1.614, -0.861, -0.51)
	SWEP.SG1Ang = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(2.5659, -5.7509, -0.0197)
	SWEP.CmoreAng = Vector()

	SWEP.ReflexPos = Vector(2.5725, -5.7481, 0.0704)
	SWEP.ReflexAng = Vector()

	SWEP.BallisticPos = Vector(-2.02, -4, 0.363)
	SWEP.BallisticAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(2.5545, -3.253, -0.5798)
	SWEP.ELCANAng = Vector()

	SWEP.TrijiconPos = Vector(2.5316, -6.2, -0.0738)
	SWEP.TrijiconAng = Vector()

	SWEP.CSGOACOGPos = Vector(2.5689, -5.0549, -0.075)
	SWEP.CSGOACOGAng = Vector()

	SWEP.SprintPos = Vector(-4.2, -1.8, 0)
	SWEP.SprintAng = Vector(-8.2, -42.201, 0)
	
	SWEP.CustomizePos = Vector(-16.8429, -15.0356, 3.0302)
	SWEP.CustomizeAng = Vector(0, -90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(2.5405, -3.253, -1.4867),
			[2] = Vector(0.0464, -0.0636, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(2.5767, -3.5013, -1.2123),
			[2] = Vector(-0.1447, -0.0374, 0),
		},

	}

	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}

	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}

	SWEP.BaseArm = "r-forearm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.AttachmentModelsVM = {
		["handguard_rail"] = {model = "models/wystan/attachments/rail.mdl", pos = Vector(0.3505, -8.2982, 1.2605), angle = Angle(180, 90, 0), size = Vector(1.45, 1.5, 1.5), bone = "Base", active = true},
		["uecw_adjustable_stock"] = {model = "models/wystan/attachments/rail.mdl", pos = Vector(0, 0, 0), angle = Angle(0, 90, 0), size = Vector(0.01, 0.01, 0.01), bone = "Base", adjustment = {axis = "y", min = 0, max = 2.5, inverse = true, inverseOffsetCalc = false}},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0.06, 0.2025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Mag", material = ""},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0.06, 0.2025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Mag", material = ""},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0.06, 0.2025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Mag", material = ""},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0.06, 0.2025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Mag", material = ""},
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0.06, 0.2025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "Mag", material = ""},
		["md_rail"] = { type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "Base", rel = "", pos = Vector(0.234, 1.019, 0.804), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["uecw_cmore"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", bone = "Base", rel = "", pos = Vector(0, 0, 2.628), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_reflex"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", bone = "Base", rel = "", pos = Vector(0, 0, 2.628), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_bipod"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "Base", rel = "", pos = Vector(0, -9.85, -1.925), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "Base", rel = "", pos = Vector(-0.269, 11.149, -8.875), angle = Angle(4.443, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "Base", rel = "", pos = Vector(0.194, 6.616, -2.481), angle = Angle(0, 180, 0), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "Base", rel = "", pos = Vector(-0.601, -8.801, 0), angle = Angle(0, -90, 90), size = Vector(0.5, 0.5, 0.5)},
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "Base", rel = "", pos = Vector(-0.401, -17.066, -3.633), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "Base", rel = "", pos = Vector(-0.015, 1.12, 2.779), angle = Angle(0, 0, 0), size = Vector(0.34, 0.34, 0.34)},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "Base", rel = "", pos = Vector(0, 5.44, -3.181), angle = Angle(0, 180, 0), size = Vector(1, 1, 1)},
		["md_m203"] = { type = "Model", model = "models/cw2/attachments/m203.mdl", bone = "Base", rel = "", pos = Vector(-2.34, 10.659, 2.4), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), animated = true},
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "Base", rel = "", pos = Vector(0.3, 5.719, -1.885), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(-0.026, 0.6564, 2.6027), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Base", material = "", skin = 1},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(-0.0337, 0.2482, 2.661), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Base"},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0, 0.9471, 2.6557), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), bone = "Base", bodygroups = {[0] = 1,}},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, -12.0001, -0.2453), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "Base"},	
}

	SWEP.ForeGripHoldPos = {
		["r-forearm"] = {pos = Vector(0, 0, 0), angle = Angle(-8.5, 14.8, -82.5)},
		["r-thumb-tip"] = {pos = Vector(0, 0, 0), angle = Angle(57.558, 0, 0)},
		["r-thumb-mid"] = {pos = Vector(0, 0, 0), angle = Angle(29.489, 0, 0)},
		["r-middle-tip"] = {pos = Vector(0, 0, 0), angle = Angle(47.895, 0, 0)},
		["r-thumb-low"] = {pos = Vector(0, 0, 0), angle = Angle(7.638, 26.665, 0)},
		["r-pinky-low"] = {pos = Vector(0, 0, 0), angle = Angle(-8.7, 0, 0)},
		["r-index-low"] = {pos = Vector(0, 0, 0), angle = Angle(51.199, 23.795, 7.397)},
		["r-ring-tip"] = {pos = Vector(0, 0, 0), angle = Angle(51.741, 0, 0)},
		["r-middle-low"] = {pos = Vector(0, 0, 0), angle = Angle(28.035, 7.127, -1.678)},
		["r-index-tip"] = {pos = Vector(0, 0, 0), angle = Angle(11.036, 0, 0)},
		["r-ring-low"] = {pos = Vector(0, 0, 0), angle = Angle(7.001, 4.373, 0)},
		["r-rist"] = {pos = Vector(0, 0, 0), angle = Angle(0, -22.463, 0)},
		["r-pinky-tip"] = {pos = Vector(0, 0, 0), angle = Angle(58.548, 0, 0)}
	}
	
	SWEP.M203HoldPos = {
		["r-upperarm-movement"] = {pos = Vector(2.8, -0.46, -1.8), angle = Angle(0, 0, 0)}
	}
	
	SWEP.ForegripOverridePos = {
		["uecw_cmag_bipod"] = {
			["r-upperarm-movement"] = {pos = Vector(2.599, 0, 0), angle = Angle(0, 0, 0)},
		},
		["uecw_cmag"] = {
			["r-upperarm-movement"] = {pos = Vector(2.599, 0, 0), angle = Angle(0, 0, 0)},
		},
		["md_foregrip"] = {
			["r-forearm"] = {pos = Vector(0, 0, 0), angle = Angle(-8.5, 14.8, -82.5)},
			["r-thumb-tip"] = {pos = Vector(0, 0, 0), angle = Angle(57.558, 0, 0)},
			["r-thumb-mid"] = {pos = Vector(0, 0, 0), angle = Angle(29.489, 0, 0)},
			["r-middle-tip"] = {pos = Vector(0, 0, 0), angle = Angle(47.895, 0, 0)},
			["r-thumb-low"] = {pos = Vector(0, 0, 0), angle = Angle(7.638, 26.665, 0)},
			["r-pinky-low"] = {pos = Vector(0, 0, 0), angle = Angle(-8.7, 0, 0)},
			["r-index-low"] = {pos = Vector(0, 0, 0), angle = Angle(51.199, 23.795, 7.397)},
			["r-ring-tip"] = {pos = Vector(0, 0, 0), angle = Angle(51.741, 0, 0)},
			["r-middle-low"] = {pos = Vector(0, 0, 0), angle = Angle(28.035, 7.127, -1.678)},
			["r-index-tip"] = {pos = Vector(0, 0, 0), angle = Angle(11.036, 0, 0)},
			["r-ring-low"] = {pos = Vector(0, 0, 0), angle = Angle(7.001, 4.373, 0)},
			["r-rist"] = {pos = Vector(0, 0, 0), angle = Angle(0, -22.463, 0)},
			["r-pinky-tip"] = {pos = Vector(0, 0, 0), angle = Angle(58.548, 0, 0)},
		},
		["md_m203"] = {
			["r-upperarm-movement"] = {pos = Vector(2.8, -0.46, -1.8), angle = Angle(0, 0, 0)}
		},
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltShootOffset = Vector(0, 2, 0)
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.MagBG = 1
	
	SWEP.HandsBG = 2
end

SWEP.SightBGs = {main = 2, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.HipAnim = false
SWEP.StockBone = "stock"

SWEP.Attachments = {[1] = {header = "Sight", offset = {400, -600},  atts = { "uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}},
	[2] = {header = "Barrel extension", offset = {-300, -600},  atts = {"md_saker", "uecw_csgo_silencer_rifle"}},
	[3] = {header = "Handguard", offset = {-300, -100}, atts = {"md_foregrip", "uecw_bipod", "md_m203"}},
	[4] = {header = "Magazine", offset = {-300, 350},  atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	[5] = {header = "Stock", offset = {1400, -100},  atts = {"uecw_adjustable_stock"}},
	["+reload"] = {header = "Ammo", offset = {800, 350}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {{time = 0.5, sound = "UECW_XM8_FOLEY"},
	{time = 0.95, sound = "UECW_XM8_MAGOUT"},
	{time = 1.2, sound = "UECW_FOLEY_LIGHT"},
	{time = 1.7, sound = "UECW_XM8_MAGIN"},
	{time = 1.75, sound = "UECW_FOLEY_LIGHT"},
	{time = 1.9, sound = "UECW_XM8_MAGTAP"},
	{time = 2.5, sound = "UECW_XM8_BOLT"},
	{time = 2.6, sound = "UECW_FOLEY_MEDIUM"}},
	reload_wet = {{time = 0.5, sound = "UECW_XM8_FOLEY"},
	{time = 0.95, sound = "UECW_XM8_MAGOUT"},
	{time = 1.2, sound = "UECW_FOLEY_LIGHT"},
	{time = 1.7, sound = "UECW_XM8_MAGIN"},
	{time = 1.75, sound = "UECW_FOLEY_LIGHT"},
	{time = 1.9, sound = "UECW_XM8_MAGTAP"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"},
	{time = 0.55, sound = "UECW_XM8_SAFETY"}}}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_xm8.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_xm8.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "UECW_XM8_FIRE"
SWEP.FireSoundSuppressed = "UECW_XM8_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.0025
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.07
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 38
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Empty = 3.6
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 3.8

SWEP.SnapToIdlePostReload = true

end