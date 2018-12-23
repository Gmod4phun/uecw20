if CustomizableWeaponry then

SWEP.magType = "smgMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "UMP .45"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(2.27, 0, 0.839)
	SWEP.IronsightAng = Vector(0.49, 0, 0)
	
	SWEP.FrontRearPos = Vector(-3.221, -1.181, 0.14)
	SWEP.FrontRearAng = Vector(-0.5, -0.2, 0)
	
	SWEP.EoTechPos = Vector(2.26, -2.914, 0.122)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(2.27, -2.914, 0.261)
	SWEP.AimpointAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(2.27, -2.914, 0.3908)
	SWEP.ReflexAng = Vector()

	SWEP.SpecterPos = Vector(2.279, -2.8, 0.2)
	SWEP.SpecterAng = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(2.27, -2.914, 0.1887)
	SWEP.CmoreAng = Vector(0.49, 0, 0)

	SWEP.MicroT1Pos = Vector(2.28, -2.8, 0.3)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(2.2746, -2.8, 0.4075)
	SWEP.TrijiconAng = Vector()

	SWEP.ACOGPos = Vector(2.2747, -3.3032, -0.0414)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(2.2708, -4.0028, 0.2575)
	SWEP.CSGOACOGAng = Vector()

	SWEP.CSGO556Pos = Vector(2.2732, -3.3479, 0.535)
	SWEP.CSGO556Ang = Vector()

	SWEP.ELCANPos = Vector(2.28, -2.8, -0.1848)
	SWEP.ELCANAng = Vector()
	
	SWEP.FAS2AimpointPos = Vector(2.2539, -4.265, 0.1262)
	SWEP.FAS2AimpointAng = Vector()

	SWEP.SprintPos = Vector(-0.801, -0.601, 1)
	SWEP.SprintAng = Vector(-13, -26, 0)
	
	SWEP.CustomizePos = Vector(-16.7722, -12.279, 3.0388)
	SWEP.CustomizeAng = Vector(0, -90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(2.2716, -2.8, -1.1626),
			[2] = Vector(0.0626, -0.0433, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(2.2747, -3.3032, -1.154),
			[2] = Vector(),
		},

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(2.2732, -3.3479, -0.3259),
			[2] = Vector(0.7745, 0, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.M203CameraRotation = {p = 0, y = 0, r = 0}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(0.0871, -0.3232, -0.5562), angle = Angle(0, 180, 0), size = Vector(0.65, 0.65, 0.65), bone = "smdimport"},
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0.059, -4.481, 2.74), angle = Angle(0, 90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {[4] = 1, [2] = 1, [3] = 1} },
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", pos = Vector(0.9146, -10.1778, 1.396), angle = Angle(0, -90, -90), size = Vector(0.45, 0.45, 0.45), bone = "smdimport"},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "smdimport", rel = "", pos = Vector(0.079, -0.801, 3.5), angle = Angle(0, 0, 0), size = Vector(0.449, 0.449, 0.449), color = Color(255, 255, 255, 255)},
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "smdimport", rel = "", pos = Vector(0.46, 4.675, -2.401), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = "", skin = 1},
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0.337, 4.484, -2.358), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = ""},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = ""},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-0.196, 9.074, -7.9173), angle = Angle(3, 90, 0), size = Vector(1, 1, 1), bone = "smdimport", material = ""},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = ""},
		["uecw_csgo_optic_sig"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = ""},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0.0802, -11.6609, 1.3884), angle = Angle(0, 90, 0), size = Vector(0.9, 0.9, 0.9), bone = "smdimport"},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0.0906, -2, 3.311), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "smdimport", material = ""},
	}
	
	SWEP.LaserPosAdjust = Vector(1, 0, 1)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 1

end

--SWEP.SightBGs = {main = 2, none = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.CustomizationMenuScale = 0.012

SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -500},  atts = {"uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "uecw_elcan", "md_aimpoint", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig"}},
	[2] = {header = "Barrel extension", offset = {-300, -500}, atts = {"md_saker", "uecw_csgo_silencer_rifle"}},
	[3] = {header = "Rail", offset = {-300, -50}, atts = {"md_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {-300, 400}, atts = {"am_magnum", "am_matchgrade"}}}

if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 8, "md_fas2_aimpoint" )
end
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"fire1", "fire2", "fire3"},
	fire_iron = "idle",
	fire_last_iron = "idle",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.6, sound = "UECW_UMP45_MAGOUT"},
	[2] = {time = 1.6, sound = "UECW_UMP45_MAGIN"},
	[3] = {time = 1.8, sound = "UECW_UMP45_TAP"},
	[4] = {time = 2.45, sound = "UECW_UMP45_BOLTBACK"},
	[5] = {time = 2.6, sound = "UECW_UMP45_BOLTFORWARD"}},
	reload_wet = {[1] = {time = 0.6, sound = "UECW_UMP45_MAGOUT"},
	[2] = {time = 1.6, sound = "UECW_UMP45_MAGIN"},
	[3] = {time = 1.8, sound = "UECW_UMP45_TAP"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "2burst", "semi"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_ump45.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_ump45.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 25
SWEP.Primary.DefaultClip	= 25
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 0.1
SWEP.FireSound = "UECW_UMP45_FIRE"
SWEP.FireSoundSuppressed = "UECW_UMP45_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 24
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.1
SWEP.ReloadHalt = 2.5
SWEP.ReloadHalt_Empty = 3.3
SWEP.SnapToIdlePostReload = true

end