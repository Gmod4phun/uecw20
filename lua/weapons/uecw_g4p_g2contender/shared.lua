if CustomizableWeaponry then

SWEP.magType = "srMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G2 Contender"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_SR25"
	SWEP.NoSilMuz = true
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.SightWithRail = false
	SWEP.AimBreathingEnabled = true
	SWEP.FOVPerShot = 0
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-2.994, -1.448, 1.21)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.FrontRearPos = Vector(-2.722, -1.882, 0.43)
	SWEP.FrontRearAng = Vector(0.33, 0.15, 0)
	
	SWEP.EoTechPos = Vector(-3, -3.961, 0.216)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-2.995, -3.961, 0.44)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-2.9934, -3.8941, 0.6127)
	SWEP.ReflexAng = Vector()

	SWEP.BallisticPos = Vector(-2.9861, -4.0373, 0.3266)
	SWEP.BallisticAng = Vector()

	SWEP.CmorePos = Vector(-2.9887, -3.7278, 0.5185)
	SWEP.CmoreAng = Vector()

	SWEP.MicroT1Pos = Vector(-3.01, -2.8, 0.75)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.9928, -4, 0.3546)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(-2.9912, -4.6507, 0.5179)
	SWEP.CSGOACOGAng = Vector()

	SWEP.CSGO556Pos = Vector(-2.9934, -4.4972, 0.783)
	SWEP.CSGO556Ang = Vector()

	SWEP.CSGOSSGPos = Vector(-2.9902, -3.9193, 0.5256)
	SWEP.CSGOSSGAng = Vector()

	SWEP.ELCANPos = Vector(-2.9997, -4.0042, 0.1135)
	SWEP.ELCANAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(10.2499, -16.0037, 1.4157)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-2.9898, -4.0042, -0.727),
			[2] = Vector(0.0025, 0.0476, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-2.991, -4, -0.4843),
			[2] = Vector(-0.0293, 0.0216, 0),
		},

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(-2.9934, -4.4972, 0.0916),
			[2] = Vector(0.7593, 0, 0),
		},

	}
	
	SWEP.HUD_MagText = "CHAMBER: "

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["uecw_ballistic"] = {model = "models/gmod4phun/uecw/attachments/optic_scope_ballistic.mdl", pos = Vector(0.482, -1.142, 0), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), bone = "Front", material = ""},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-4.8469, 3.1012, 0.2762), angle = Angle(-90, 0, -90), size = Vector(0.75, 0.75, 0.75), bone = "Front", material = ""},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "Front", rel = "", pos = Vector(-4.566, 3.92, 0.228), angle = Angle(-90, 0, -90), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(-0.0694, -1.1336, 0), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "Front", material = "", skin = 1},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0.5312, -1.1336, 0), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "Front", material = ""},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0.5312, -1.1336, 0), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "Front", material = ""},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-10.4147, 10.0721, -0.2513), angle = Angle(0, 3, -90), size = Vector(1, 1, 1), bone = "Front", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0.3809, -1.1124, 0), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "Front", material = ""},
		["uecw_csgo_optic_sig"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", pos = Vector(0.482, -1.142, 0), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), bone = "Front", material = ""},
		["uecw_csgo_optic_bender"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_bender.mdl", pos = Vector(0.482, -1.142, 0), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), bone = "Front", material = ""},
		["uecw_csgo_silencer_ballistic"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_sniper.mdl", pos = Vector(10.1562, -0.6456, 0), angle = Angle(0, 0, 180), size = Vector(0.8, 0.8, 0.8), bone = "Front"},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(10.1562, -0.6456, 0), angle = Angle(0, 0, -90), size = Vector(0.8, 0.8, 0.8), bone = "Front"},
		}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(2, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 1

end

SWEP.LuaViewmodelRecoil = false
SWEP.ADSFireAnim = true

SWEP.CustomizationMenuScale = 8.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {250, -600},  atts = { "uecw_cmore", "uecw_reflex", "uecw_elcan", "md_eotech", "md_aimpoint", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig", "uecw_csgo_optic_bender", "uecw_ballistic"}, exclusions = {md_frontsight = true, md_rearsight = true}},
	[2] = {header = "Barrel extension", offset = {-500, -500}, atts = {"uecw_csgo_silencer_rifle", "uecw_csgo_silencer_ballistic"}},
	["+reload"] = {header = "Ammo", offset = {-100, 200}, atts = {"am_magnum", "am_matchgrade"}}}
	
--SWEP.AttachmentDependencies = {} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "awm_fire",
	fireDry = "awm_fire",
	reload = "awm_reload",
	idle = "awm_idle",
	draw = "awm_draw"}
	
SWEP.Sounds = {awm_reload = {[1] = {time = 0.5, sound = "UECW_G2_OPEN"},
	[2] = {time = 0.55, sound = "UECW_G2_CLIPOUT"},
	[3] = {time = 1.0, sound = "UECW_G2_SHELL"},
	[4] = {time = 1.35, sound = "UECW_G2_CLIPIN"},
	[5] = {time = 2.2, sound = "UECW_G2_CLOSE"}},
	awm_draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"},
	{time = 0.25, sound = "UECW_G2_COCK"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_g2_contender.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_g2_contender.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-98, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".30 Winchester"
SWEP.Chamberable = false

SWEP.FireDelay = 0.5
SWEP.FireSound = "UECW_G2_FIRE"
SWEP.FireSoundSuppressed = "UECW_G2_FIRE_SUPPRESSED"
SWEP.Recoil = 2.6

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 54
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

end