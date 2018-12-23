if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SCAR-L MK16"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.MuzzleAttachmentName = "muz_scar"
	SWEP.MuzzleAttachment = 3 -- scar muzzle att index
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellAttachmentName = "shell_scar"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.725
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.77
	
	SWEP.MagInsertOffsetCycle = 0.28
	SWEP.MagInsertOffsetCycle_Empty = 0.22
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0

	SWEP.IronsightPos = Vector(-1.6868, 0, -0.2)
	SWEP.IronsightAng = Vector(0.3006, 0.0037, 0)

	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)

	SWEP.CmorePos = Vector(-1.7174, -2.401, 0.0922)
	SWEP.CmoreAng = Vector()

	SWEP.ELCANPos = Vector(-1.6815, -1.2451, -0.208)
	SWEP.ELCANAng = Vector()

	SWEP.EoTechPos = Vector(-1.68, -2.401, -0.22)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-1.6948, -2.401, 0.1599)
	SWEP.AimpointAng = Vector()

	SWEP.MicroT1Pos = Vector(-1.64, -1.4, 0.06)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(-1.673, -2.401, 0.1108)
	SWEP.TrijiconAng = Vector()

	SWEP.ACOGPos = Vector(-1.6902, -2.4515, 0.0898)
	SWEP.ACOGAng = Vector()

	SWEP.ReflexPos = Vector(-1.704, -2.401, 0.1856)
	SWEP.ReflexAng = Vector()

	SWEP.BallisticPos = Vector(-1.696, -2.401, -0.181)
	SWEP.BallisticAng = Vector(0, 0, 0)

	SWEP.CSGOACOGPos = Vector(-1.7016, -2.1549, 0.0597)
	SWEP.CSGOACOGAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.CustomizePos = Vector(16.2188, -11.4516, 1.1474)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-1.6732, -0.9451, -0.9974),
			[2] = Vector(0.1395, 0.0618, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-1.6902, -2.4515, -0.6333),
			[2] = Vector(),
		},
		

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(-1.7057, -2.1499, -0.4248),
			[2] = Vector(0.9079, 0.032, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.CSGO556AxisAlign = {right = 0, up = 0, forward = 50.5}
	SWEP.CSGOACOGAxisAlign = {right = 0, up = 0, forward = -40}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Right_L_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.MagBG = 6
	SWEP.AttachmentModelsVM = {
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "SCAR_PMAG30"},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "SCAR_PMAG30"},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "SCAR_PMAG30"},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "SCAR_PMAG30", skin = 1},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "SCAR_PMAG30"},
		["md_ballsitic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-1.451, -2.201, -8.801), angle = Angle(90, 0, -90), size = Vector(1.149, 1.149, 1.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_reflex"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, -1.601, -0.801), angle = Angle(90, 0, -90), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_cmore"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, -1.601, -0.801), angle = Angle(90, 0, -90), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.181, 2.599, -4.861), angle = Angle(0, 0, -90), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0.0322, -1.5828, -1.0974), angle = Angle(90, 0, -90), size = Vector(0.6, 0.6, 0.6), bone = "SCAR_Body", material = "", bodygroups = {[1] = 1,}, skin = 1},
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0.3, 9.6, -11.561), angle = Angle(93, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.356, 2.5702, -4.6179), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "SCAR_body"},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "SCAR_Body", rel = "", pos = Vector(0, 2.069, -0.621), angle = Angle(0, 0, -90), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "SCAR_body", pos = Vector(0, -2, 1.1), angle = Angle(0, 180, 90), size = Vector(0.4, 0.4, 0.4)},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-0.22, 2.099, -5.4492), angle = Angle(0, 0, -90), size = Vector(0.649, 0.649, 0.649), bone = "SCAR_Body", material = ""},
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "SCAR_Body", rel = "", pos = Vector(-0.101, -1.601, 3.799), angle = Angle(-90, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0.0339, -1.6292, -0.7233), angle = Angle(90, 0, -90), size = Vector(0.7, 0.7, 0.7), bone = "SCAR_Body", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0.0065, -1.591, -0.8955), angle = Angle(90, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "SCAR_Body", material = "", bodygroups = {[0] = 1,}},
		["uecw_bipod"] = {model = "models/gmod4phun/uecw/attachments/bipod.mdl", pos = Vector(0.0215, 1.0049, 6.9982), angle = Angle(90, 0, -90), size = Vector(0.65, 0.65, 0.65), bone = "SCAR_body"},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, -0.1637, 12.3052), angle = Angle(90, -90, 0), size = Vector(1, 1, 1), bone = "SCAR_Body", material = ""},
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(), angle = Angle(-8.8546, 14.9925, 0)},
		["Bip01 L Finger41"] = {pos = Vector(), angle = Angle(0, 34.5707, 0)},
		["Bip01 L Finger2"] = {pos = Vector(), angle = Angle(0, 31.5659, 0)},
		["Bip01 L Finger22"] = {pos = Vector(), angle = Angle(0, 33.8342, 0)},
		["Bip01 L Finger31"] = {pos = Vector(), angle = Angle(0, -2.0278, 0)},
		["Bip01 L Finger02"] = {pos = Vector(), angle = Angle(0, 55.2359, 0)},
		["Bip01 L Finger11"] = {pos = Vector(), angle = Angle(0, 68.7509, 0)},
		["Bip01 L Finger4"] = {pos = Vector(), angle = Angle(-15.9395, -16.4271, 12.8353)},
		["Bip01 L Finger1"] = {pos = Vector(), angle = Angle(0, 31.4557, 0)},
		["Bip01 L Finger42"] = {pos = Vector(), angle = Angle(0, 67.9783, 0)},
		["Bip01 L Hand"] = {pos = Vector(), angle = Angle(0, 67.3488, 35.5836)},
		["Bip01 L Finger0"] = {pos = Vector(), angle = Angle(15.0189, 8.2456, -12.9373)},
		["Bip01 L Finger12"] = {pos = Vector(), angle = Angle(0, 8.6162, 0)},
		["Bip01 L Finger21"] = {pos = Vector(), angle = Angle(-4.6701, -5.4541, 0)},
		["Bip01 L Finger32"] = {pos = Vector(), angle = Angle(0, 52.9945, 1.8596)},
		["Bip01 L Finger01"] = {pos = Vector(), angle = Angle(0, 3.4994, 0)},
		["Bip01 L UpperArm"] = {pos = Vector(2.7149, -3.4813, -1.3164), angle = Angle(0, 0, 13.9112)},
	}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)
	
	SWEP.HandsBG = 1
end

SWEP.SightBGs = {main = 2, carryhandle = 0, none = 1}
SWEP.SuppressBGs = {main = 4, on = 1, off = 0}
SWEP.BarrelBGs = {regular = 0}
SWEP.LuaViewmodelRecoil = true
SWEP.CustomizationMenuScale = 0.007

SWEP.Attachments = {[1] = {header = "Sight", offset = {-450, -600},  atts = {"uecw_cmore", "uecw_trijicon", "uecw_reflex", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}},
	[2] = {header = "Barrel extension", offset = {-450, -150}, atts = {"md_saker", "uecw_csgo_silencer_rifle", "uecw_bg_silencer"}},
	[3] = {header = "Rail", offset = {-450, 300}, atts = {"md_anpeq15"}},
	[4] = {header = "Handguard", offset = {250, 300}, atts = {"md_foregrip", "uecw_bipod"}},
	[5] = {header = "Magazine", offset = {250, 700}, atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	["+reload"] = {header = "Ammo", offset = {950, 200}, atts = {"am_magnum", "am_matchgrade"}}}
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "shoot_scar",
	fire_last = "shoot_last_open_scar",
	fire_iron = "shoot_scar",
	fire_last_iron = "shoot_last_open_scar",
	reload = "reload_scar",
	reload_empty = "reload_open_scar",
	idle = "idle_scar",
	idle_empty = "idle_empty_open_scar",
	draw = "draw_scar"}
	
SWEP.Sounds = {reload_open_scar = {{time = 0.6, sound = "UECW_MASADA_SCAR_MAGOUT"},
	{time = 1.2, sound = "UECW_MASADA_SCAR_MAGIN"},
	{time = 1.55, sound = "UECW_MASADA_SCAR_MAGIN2"},
	{time = 2.05, sound = "UECW_MASADA_SCAR_BOLT"}},
	reload_scar = {{time = 0.6, sound = "UECW_MASADA_SCAR_MAGOUT"},
	{time = 1.2, sound = "UECW_MASADA_SCAR_MAGIN"},
	{time = 1.55, sound = "UECW_MASADA_SCAR_MAGIN2"}},
	draw_scar = {{time = 0.01, sound = "UECW_MASADA_SCAR_DRAW"}}}

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
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_mas_scar.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_masscar_scar.mdl"
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

SWEP.FireDelay = 0.075
SWEP.FireSound = "UECW_MASADA_SCAR_FIRE"
SWEP.FireSoundSuppressed = "UECW_MASADA_SCAR_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 22
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 3.2
SWEP.SnapToIdlePostReload = false

end
