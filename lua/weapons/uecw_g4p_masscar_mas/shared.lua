if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Masada ACR"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.MuzzleAttachmentName = "muz_mas"
	SWEP.MuzzleAttachment = 1 -- masada muzzle att index
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.835
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.855
	
	SWEP.MagInsertOffsetCycle = 0
	SWEP.MagInsertOffsetCycle_Empty = 0
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0

	SWEP.IronsightPos = Vector(-1.635, -0.75, -0.125)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)
	
	SWEP.CmorePos = Vector(-1.62, -1.4, -0.06)
	SWEP.CmoreAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-1.6356, -0.9975, -0.4641)
	SWEP.ELCANAng = Vector()

	SWEP.EoTechPos = Vector(-1.6404, -1.4, -0.2383)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(-1.62, -1.4, -0.2)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-1.64, -1.4, 0.06)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(-1.5892, -2.2486, 0.0561)
	SWEP.TrijiconAng = Vector()

	SWEP.ACOGPos = Vector(-1.64, -1.785, -0.38)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-1.62, -1.4, 0.08)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
--	SWEP.BallisticPos = Vector(-1.62, -1.4, -0.2)
--	SWEP.BallisticAng = Vector(0, 0, 0)

	SWEP.CSGOACOGPos = Vector(-1.6366, -1.4972, -0.116)
	SWEP.CSGOACOGAng = Vector()

	SWEP.CSGO556Pos = Vector(-1.6258, -1.85, 0.1277)
	SWEP.CSGO556Ang = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(15.2188, -11.4516, 1.1474)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-1.6248, -0.9975, -1.3647),
			[2] = Vector(0.026, 0.0517, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-1.64, -1.785, -1.4934),
			[2] = Vector(0, 0.0229, 0),
		},

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(-1.6258, -1.85, -0.7192),
			[2] = Vector(0.7745, 0.0347, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Right_L_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.HasTwoMagModels = true
	SWEP.MagBG = 7
	SWEP.AttachmentModelsVM = {
		["uecw_cmag"] = {models = {
			{model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30"},
			{model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30.2"},
		}},
		["uecw_mag_quad"] = {models = {
			{model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30"},
			{model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30.2"},
		}},
		["uecw_mag_usgi"] = {models = {
			{model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30"},
			{model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30.2"},
		}},
		["uecw_mag_pmag_2"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30.2", skin = 1},
		["uecw_mag_pmag_1"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30", skin = 1},
		["uecw_mag_emag_2"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30.2"},
		["uecw_mag_emag_1"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0, -0.0355, -0.7273), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), bone = "Masada_PMAG30"},
		["uecw_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "Masada_body", rel = "", pos = Vector(-1.315, -10.2, 1.52), angle = Angle(0, -90, 0), size = Vector(1.039, 1.039, 1.039), color = Color(255, 255, 255, 255)},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0, -2, 0.96), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Masada_body"},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0, -2, 0.96), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Masada_body"},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Masada_body", rel = "", pos = Vector(-0.26, -8.2, -4.64), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0, -2.598, 0.9515), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Masada_body", bodygroups = {[1] = 1,}, skin = 1},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(0.25, -12.8796, -10.1811), angle = Angle(2.5, -90, 0), size = Vector(1, 1, 1), bone = "Masada_body"},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.3887, -6.2035, -3.4583), angle = Angle(0, 0, 0), size = Vector(0.699, 0.699, 0.699), bone = "Masada_body"},
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", bone = "Masada_body", pos = Vector(0, -7.4, -3.3), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Masada_body", pos = Vector(0, -2, 1.1), angle = Angle(0, 180, 0), size = Vector(0.4, 0.4, 0.4)},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "Masada_body", pos = Vector(-0.38, -7.2, -4.8), angle = Angle(0, 0, 0), size = Vector(1, 1, 1)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "Masada_body", pos = Vector(-0.08, 4, 0.94), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0.0364, -2.4317, 0.9922), angle = Angle(0, -90, 0), size = Vector(0.7, 0.7, 0.7), bone = "Masada_Body"},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(-0.0138, -2.5958, 0.9839), angle = Angle(0, -90, 0), size = Vector(0.725, 0.725, 0.725), bone = "Masada_Body", bodygroups = {[0] = 1,}},
		["uecw_bipod"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "Masada_Body", rel = "", pos = Vector(0, 4.599, -2.06), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, 9.9232, -0.3129), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "Masada_Body"},
		["uecw_csgo_optic_sig"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", pos = Vector(0, -2.1454, 0.9841), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), bone = "Masada_Body"},
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "Masada_body", pos = Vector(2.299, -6.611, 4.138), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), animated = true}
	}
	
	SWEP.M203HoldPos = {
		["Bip01 L Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(-2.76, 2.651, 1.386), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
		["Bip01 L Finger3"] = {pos = Vector(-0.3301, 0.3784, -0.1381), angle = Angle(-11.6567, 22.4173, 0)},
		["Bip01 L Finger41"] = {pos = Vector(), angle = Angle(0, 74.5222, 0)},
		["Bip01 L Finger2"] = {pos = Vector(), angle = Angle(-6.4698, 51.7247, -3.919)},
		["Bip01 L Finger22"] = {pos = Vector(), angle = Angle(0, 37.2535, 0)},
		["Bip01 L Finger31"] = {pos = Vector(), angle = Angle(0, 31.5663, 0)},
		["Bip01 L Finger02"] = {pos = Vector(), angle = Angle(0, 54.0206, 0)},
		["Bip01 L Finger11"] = {pos = Vector(), angle = Angle(0, 68.7509, 0)},
		["Bip01 L Finger4"] = {pos = Vector(-0.7848, 0.688, -0.7426), angle = Angle(-5.1394, -46.6042, 23.6487)},
		["Bip01 L Finger1"] = {pos = Vector(), angle = Angle(0, 31.4557, 0)},
		["Bip01 L UpperArm"] = {pos = Vector(2.4751, -5.0545, -1.6851), angle = Angle(0, 0, 13.9112)},
		["Bip01 L Finger32"] = {pos = Vector(), angle = Angle(0, 35.2262, 0)},
		["Bip01 L Hand"] = {pos = Vector(), angle = Angle(0, 67.3488, 35.5836)},
		["Bip01 L Finger12"] = {pos = Vector(), angle = Angle(0, 8.6162, 0)},
		["Bip01 L Finger21"] = {pos = Vector(), angle = Angle(-4.6701, 13.027, 0)},
		["Bip01 L Finger42"] = {pos = Vector(), angle = Angle(0, 56.3017, 0)},
		["Bip01 L Finger01"] = {pos = Vector(), angle = Angle(0, 47.8322, 0)},
		["Bip01 L Finger0"] = {pos = Vector(), angle = Angle(15.0189, -14.6933, -12.9373)},
	}
	
	SWEP.LaserPosAdjust = Vector(1, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)
	SWEP.HandsBG = 1
end

SWEP.SightBGs = {main = 3, carryhandle = 0, none = 1}
SWEP.SuppressBGs = {main = 5, on = 1, off = 0}
SWEP.BarrelBGs = {regular = 0}
SWEP.LuaViewmodelRecoil = true
SWEP.CustomizationMenuScale = 0.007

SWEP.Attachments = {[1] = {header = "Sight", offset = {-450, -600},  atts = { "uecw_cmore", "uecw_trijicon", "uecw_reflex", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Barrel extension", offset = {-450, -200}, atts = {"md_saker", "uecw_csgo_silencer_rifle", "uecw_bg_silencer"}},
	[3] = {header = "Rail", offset = {-450, 250}, atts = {"md_anpeq15"}},
	[4] = {header = "Handguard", offset = {250, 300}, atts = {"md_foregrip", "uecw_bipod"}},
	[5] = {header = "Magazine", offset = {250, 700}, atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad"/*, "uecw_cmag"*/}},
	[6] = {header = "Skin", offset = {1500, 700}, atts = {"uecw_weapon_skin"}},
	["+reload"] = {header = "Ammo", offset = {950, 200}, atts = {"am_magnum", "am_matchgrade"}}
}
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "shoot_masada",
	fire_iron = "shoot_masada",
	fire_last = "shoot_last_masada",
	fire_last_iron = "shoot_last_masada",
	reload = "reload_masada",
	reload_empty = "reload_empty_masada",
	idle = "idle_masada",
	idle_empty = "idle_empty_masada",
	draw = "draw_masada"
}

SWEP.Sounds = {reload_empty_masada = {[1] = {time = 1, sound = "UECW_MASADA_MAGOUT"},
	[2] = {time = 1.6, sound = "UECW_MASADA_MAGIN"},
	[3] = {time = 2.3, sound = "UECW_MASADA_BOLT"}},
	reload_masada = {[1] = {time = 1, sound = "UECW_MASADA_MAGOUT"},
	[2] = {time = 1.6, sound = "UECW_MASADA_MAGIN"}},
	draw_masada = {{time = 0.01, sound = "UECW_XM8_CLOTH"}}
}

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
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_masscar_masada.mdl"
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
SWEP.FireSound = "UECW_MASADA_FIRE"
SWEP.FireSoundSuppressed = "UECW_MASADA_FIRE_SUPPRESSED"
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
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.9
SWEP.ReloadHalt_Empty = 3.3
SWEP.SnapToIdlePostReload = false

end
