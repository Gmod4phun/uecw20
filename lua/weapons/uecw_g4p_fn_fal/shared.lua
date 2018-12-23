if CustomizableWeaponry then

SWEP.magType = "brMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FAL"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.NoSilMuz = true
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
--	SWEP.CustomizePos = Vector(-10.5, -5.8, 0.4)
--	SWEP.CustomizeAng = Vector(27, -50, -30)

	SWEP.IronsightPos = Vector(-2.7185, -2.25, 0.7925)
	SWEP.IronsightAng = Vector(0.12, 0.025, 0)
	
	SWEP.FoldSightPos = Vector(-2.02, -3.4, 0.12)
	SWEP.FoldSightAng = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.7197, -2.8, 0.0088)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(-2.733, -2.1751, 0.3579)
	SWEP.AimpointAng = Vector()

	SWEP.ReflexPos = Vector(-2.7291, -2.8, 0.3739)
	SWEP.ReflexAng = Vector()

	SWEP.BallisticPos = Vector(-2.7269, -2.1439, 0.0042)
	SWEP.BallisticAng = Vector()

	SWEP.TrijiconPos = Vector(-2.7369, -3.3634, 0.3877)
	SWEP.TrijiconAng = Vector()

	SWEP.CmorePos = Vector(-2.75, -2.8, 0.285)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-2.721, -3.201, 0.4)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.718, -3.15, -0.02)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.7397, -3.2525, -0.1203)
	SWEP.ELCANAng = Vector()

	SWEP.CSGOACOGPos = Vector(-2.7106, -4.2004, 0.256)
	SWEP.CSGOACOGAng = Vector()

	SWEP.CSGO556Pos = Vector(-2.7318, -3.5987, 0.4978)
	SWEP.CSGO556Ang = Vector()

	SWEP.CSGOSSGPos = Vector(-2.7313, -1.503, 0.2139)
	SWEP.CSGOSSGAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.CustomizePos = Vector(17.8843, -15.6991, 1.8454)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-2.725, -3.1232, -0.975),
			[2] = Vector(0.1165, 0.0767, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-2.7194, -1.6549, -0.9799),
			[2] = Vector(0.0738, 0.0244, 0),
		},

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(-2.7304, -2.9991, -0.2625),
			[2] = Vector(0.919, 0.0241, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "weapon", rel = "", pos = Vector(0.18, 4.8, -3.451), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_ballistic"] = {model = "models/gmod4phun/uecw/attachments/optic_scope_ballistic.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-0.301, 10.5, -9.9618), angle = Angle(2, 90, 0), size = Vector(1, 1, 1), bone = "weapon"},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(0, -6.0273, -2.0371), angle = Angle(0, 180, 0), size = Vector(0.62, 0.62, 0.62), bone = "weapon"},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "weapon", rel = "", pos = Vector(-0.04, 1.259, 1.24), angle = Angle(0, 0, 0), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 255)},
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(0.25, 4.675, -3.451), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "weapon", rel = "", pos = Vector(0, -8.42, 1.049), angle = Angle(0, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255)},
		["uecw_csgo_silencer_ballistic"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_sniper.mdl", pos = Vector(0, -16.7187, -0.1842), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "weapon"},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(-0.04, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_csgo_optic_sig"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_csgo_optic_bender"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_bender.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon"},
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "weapon", rel = "", pos = Vector(0.28, 5.199, -3.721), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85)},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(-0.02, -0.6086, 1.0908), angle = Angle(0, 90, 0), size = Vector(0.65, 0.65, 0.65), bone = "weapon", skin = 1},
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 42.713, 0) },
		["Bip01 L Clavicle"] = {pos = Vector(-3.299, 1.235, -1.79), angle = Angle(-55.446, 11.843, 0) },
		["Bip01 L Forearm"] = {pos = Vector(0, 0, 0), angle = Angle(0, 0, 42.41) },
		["Bip01 L Finger02"] = {pos = Vector(0, 0, 0), angle = Angle(0, 71.308, 0) },
		["Bip01 L Finger11"] = {pos = Vector(0, 0, 0), angle = Angle(0, 25.795, 0) },
		["Bip01 L Finger4"] = {pos = Vector(0, 0, 0), angle = Angle(0, 26.148, 0) },
		["Bip01 L Finger1"] = {pos = Vector(0, 0, 0), angle = Angle(6.522, 83.597, 0) },
		["Bip01 L Finger0"] = {pos = Vector(0, 0, 0), angle = Angle(23.2, 16.545, 0) },
		["Bip01 L Finger42"] = {pos = Vector(0, 0, 0), angle = Angle(0, 31.427, 0) },
		["Bip01 L Finger32"] = {pos = Vector(0, 0, 0), angle = Angle(0, 29.565, 0) },
		["Bip01 L Hand"] = {pos = Vector(0, 0, 0), angle = Angle(9.491, 14.793, -15.926) },
		["Bip01 L Finger12"] = {pos = Vector(0, 0, 0), angle = Angle(0, -9.195, 0) },
		["Bip01 L Finger21"] = {pos = Vector(0, 0, 0), angle = Angle(0, 10.164, 0) },
		["Bip01 L Finger01"] = {pos = Vector(0, 0, 0), angle = Angle(0, 18.395, 0) },
		["Bip01 L Finger2"] = {pos = Vector(0, 0, 0), angle = Angle(2.411, 57.007, 0) }
	}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 5
	
end

SWEP.SightBGs = {main = 3, none = 1}
SWEP.BarrelBGs = {regular = 0}

SWEP.CustomizationMenuScale = 11.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -650},  atts = { "uecw_cmore", "uecw_trijicon", "uecw_reflex", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig", "uecw_csgo_optic_bender", "uecw_ballistic"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Barrel extension", offset = {-200, -500}, atts = {"md_saker", "uecw_csgo_silencer_ballistic"}},
	[3] = {header = "Rail", offset = {-300, 200}, atts = {"md_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {1000, 400}, atts = {"am_magnum", "am_matchgrade"}}}
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.3, sound = "UECW_FAL_MAGOUT"},
	[2] = {time = 1.9, sound = "UECW_FAL_MAGIN"},
	[3] = {time = 2.5, sound = "UECW_FAL_BOLT"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"}},
	reload_wet = {[1] = {time = 0.3, sound = "UECW_FAL_MAGOUT"},
	[2] = {time = 1.9, sound = "UECW_FAL_MAGIN"}}}

SWEP.SpeedDec = 30

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
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_fn_fal.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_fal.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.092307
SWEP.FireSound = "UECW_FAL_FIRE"
SWEP.FireSoundSuppressed = "UECW_FAL_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 36
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 3.4

end