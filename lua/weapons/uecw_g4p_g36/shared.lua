if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G36"
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
	SWEP.ForeGripOffsetCycle_Reload = 0.89
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.8

	SWEP.MagInsertOffsetCycle = 0.43
	SWEP.MagInsertOffsetCycle_Empty = 0.33
	
	SWEP.FireMoveMod = 0.6

	SWEP.IronsightPos = Vector(2.6145, -1.8137, 0.7464)
	SWEP.IronsightAng = Vector(0.102, -0.028, 0)

	SWEP.EoTechPos = Vector(2.6113, -5.2047, -0.1241)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(2.6002, -5.119, 0.109)
	SWEP.AimpointAng = Vector()

	SWEP.MicroT1Pos = Vector(2.569, -6.2, 0.019)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(2.6114, -4.5964, -0.0737)
	SWEP.ACOGAng = Vector()

	SWEP.SG1Pos = Vector(-1.614, -0.861, -0.51)
	SWEP.SG1Ang = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(2.6222, -5.6645, 0.1111)
	SWEP.CmoreAng = Vector()

	SWEP.ReflexPos = Vector(2.622, -5.7017, 0.2047)
	SWEP.ReflexAng = Vector()

	SWEP.BallisticPos = Vector(-2.02, -4, 0.363)
	SWEP.BallisticAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(2.5975, -3.4686, -0.2207)
	SWEP.ELCANAng = Vector()

	SWEP.TrijiconPos = Vector(2.5903, -4.7974, -0.09)
	SWEP.TrijiconAng = Vector(0, 0, 0)

	SWEP.CSGOACOGPos = Vector(2.6177, -4.8721, 0.0808)
	SWEP.CSGOACOGAng = Vector()

	SWEP.CSGOSSGPos = Vector(-2.02, -3.217, 0.34)
	SWEP.CSGOSSGAng = Vector(0, 0, 0)

	SWEP.G36KPos = Vector(2.6123, -4.3864, 0.9885)
	SWEP.G36KAng = Vector(0, 0, 0)

	SWEP.SprintPos = Vector(-4.2, -1.8, 0)
	SWEP.SprintAng = Vector(-8.2, -42.201, 0)

	SWEP.CustomizePos = Vector(-16.0652, -14.9875, 2.3414)
	SWEP.CustomizeAng = Vector(0, -90, 0)

	SWEP.BackupSights = {
		["uecw_g36k_scope"] = {Vector(2.6175, -2.0427, 0.4002), Vector(0, 0, 0)},

		["uecw_elcan"] = {
			[1] = Vector(2.5871, -3.4686, -1.0637),
			[2] = Vector(-0.001, -0.0484, 0),
		},
		
		["uecw_acog"] = {
			[1] = Vector(2.6114, -4.5964, -0.9455),
			[2] = Vector(-0.1805, 0, 0),
		},

	}

	SWEP.SightWithRail = false
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}

	SWEP.M203OffsetCycle_Reload = 0.81
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}

	SWEP.BaseArm = "r-forearm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.M203HoldPos = {
		["r-upperarm-movement"] = {pos = Vector(2.8, -0.46, -1.8), angle = Angle(0, 0, 0)}
	}

	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/gmod4phun/uecw/attachments/rail_larue.mdl", pos = Vector(0.0467, 1.2015, 2.3702), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "Base", material = ""},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0.06, 0.025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Mag", material = ""},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0.06, 0.025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Mag", material = ""},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0.06, 0.025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Mag", material = ""},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0.06, 0.025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Mag", material = ""},
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0.06, 0.025, -0.5), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Mag", material = ""},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0.05, 0, 2.3523), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Base", material = ""},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0.05, 0, 2.3523), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Base", material = ""},
		["uecw_bipod"] = {model = "models/gmod4phun/uecw/attachments/bipod.mdl", pos = Vector(0.057, -9.997, -1.6188), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "Base", material = ""},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-0.225, 11.6, -8.8466), angle = Angle(3, 90, 0), size = Vector(1, 1, 1), bone = "Base", material = ""},		
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", pos = Vector(0.2456, 5.4425, -2.3946), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85), bone = "Base", material = ""},
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "Base", rel = "", pos = Vector(-0.401, -17.066, -3.2), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "Base", rel = "", pos = Vector(-0.015, 1.12, 2.779), angle = Angle(0, 0, 0), size = Vector(0.34, 0.34, 0.34)},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(0, 4.6, -2.4), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), bone = "Base"},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(0.335, 5.0618, -2.1522), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), bone = "Base"},		
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0.0175, 0.4747, 2.3523), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "Base", material = "", skin = 1},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0.0254, 0.646, 2.5964), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "Base", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0.05, 0, 2.3523), angle = Angle(0, 90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Base", material = "", bodygroups = {[0] = 1}},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, -9.45, 0), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), bone = "Base"},
	}
	
	SWEP.AttachmentPosDependency = {
		["md_saker"] = {["uecw_g36k_barrel"] = Vector(0, -2, -2.275)},
		["uecw_csgo_silencer_rifle"] = {["uecw_g36k_barrel"] = Vector(0, -15.9, 0.1)}
	}

	SWEP.ForeGripHoldPos = {
		["r-forearm"] = {pos = Vector(0, 0, 0), angle = Angle(-6.6, 12.5, -82.5)},
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
	
	SWEP.CMagHoldPos = {
		["r-upperarm-movement"] = { scale = Vector(1, 1, 1), pos = Vector(2.599, 0, 0), angle = Angle(0, 0, 0) },
	}
	
	SWEP.ForegripOverridePos = {
		["uecw_cmag_bipod"] = SWEP.CMagHoldPos,
		["uecw_cmag"] = SWEP.CMagHoldPos,
		["md_foregrip"] = SWEP.ForeGripHoldPos,
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.5, hor = 1, roll = 1, forward = 0.5, pitch = 0.5}
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltShootOffset = Vector(0, 2, 0)
	
	SWEP.LaserPosAdjust = Vector(0.5, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.MagBG = 4
	
	SWEP.AttsWithRail = {uecw_trijicon = "md_rail"}
	
	SWEP.HandsBG = 3
end

SWEP.SightBGs = {main = 1, none = 0, G36K = 1}
SWEP.BarrelBGs = {main = 2, regular = 0, G36K = 1}
SWEP.StockBGs = {main = 5, regular = 0, none = 1}
SWEP.LuaViewmodelRecoil = true
SWEP.HipAnim = false

SWEP.CustomizationMenuScale = 11.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -700},  atts = { "uecw_g36k_scope", "uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}},
	[2] = {header = "Barrel", offset = {150, -800},  atts = {"uecw_g36k_barrel"}},
	[3] = {header = "Barrel extension", offset = {-550, -700},  atts = {"md_saker", "uecw_csgo_silencer_rifle"}},
	[4] = {header = "Handguard", offset = {-700, -200}, atts = {"md_foregrip", "uecw_bipod"}},
	[5] = {header = "Magazine", offset = {-600, 350},  atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	[6] = {header = "Stock", offset = {400, 300},  atts = {"uecw_nostock"}, exclusions = {uecw_cmag = true}},
	["+reload"] = {header = "Ammo", offset = {1200, 300}, atts = {"am_magnum", "am_matchgrade"}}}
	
SWEP.AttachmentExclusions = {
	["uecw_nostock"] = {"uecw_cmag"},
	["uecw_cmag"] = {"uecw_nostock"}
}

SWEP.AttachmentDependencies = {
	["uecw_bipod"] = {"uecw_g36k_barrel"},
}

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	idle_empty = "idle",
	draw = "draw",
	draw_empty = "draw"}
	
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
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_g36.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_g36c.mdl"
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

end