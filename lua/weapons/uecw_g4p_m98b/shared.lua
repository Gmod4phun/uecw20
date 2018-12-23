if CustomizableWeaponry then

SWEP.magType = "srMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M98 Bravo"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_SR25"
	SWEP.NoSilMuz = true
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = 3}
	SWEP.ShellDelay = 1.25
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	SWEP.SightWithRail = false
	SWEP.AimBreathingEnabled = true
	SWEP.FOVPerShot = 0
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
--	SWEP.CustomizePos = Vector(-10.5, -5.8, 0.4)
--	SWEP.CustomizeAng = Vector(27, -50, -30)

	SWEP.DefScopePos = Vector(-2.1996, -1.4951, 0.998)
	SWEP.DefScopeAng = Vector()

	SWEP.IronsightPos = Vector(-2.211, -2.85, 0.6125)
	SWEP.IronsightAng = Vector(-0.25, 0, 0)
	
	SWEP.EoTechPos = Vector(-2.181, -4.75, 0.54)
	SWEP.EoTechAng = Vector(0, 0, 0)
	
	SWEP.AimpointPos = Vector(-3.197, -3.608, -0.101)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ReflexPos = Vector(-3.197, -3.608, 0.244)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.BallisticPos = Vector(-2.1907, -2.4273, 0.5788)
	SWEP.BallisticAng = Vector()

	SWEP.CmorePos = Vector(-3.215, -3.608, 0.2)
	SWEP.CmoreAng = Vector(0, 0, 0)
	
	SWEP.MicroT1Pos = Vector(-3.2, -3.6, 0.16)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.1997, -2.7912, 0.5546)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(-3.21, -2.6, 0.044)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	
	SWEP.CSGO556Pos = Vector(-3.2, -3.6, 0.2)
	SWEP.CSGO556Ang = Vector(0, 0, 0)

	SWEP.CSGOSSGPos = Vector(-2.1933, -1.6295, 0.7867)
	SWEP.CSGOSSGAng = Vector()

	SWEP.ELCANPos = Vector(-2.201, -3.034, 0.474)
	SWEP.ELCANAng = Vector(0, 0, 0)
	
	SWEP.FAS2AimpointPos = Vector(-2.201, -3.034, 0.8)
	SWEP.FAS2AimpointAng = Vector(0, 0, 0)

	SWEP.LeupoldPos = Vector(-2.1936, -3.5487, 0.7148)
	SWEP.LeupoldAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.CustomizePos = Vector(23.4548, -20.976, 1.3043)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(-2.1847, -3.8299, -0.3838),
			[2] = Vector(0.0486, 0.0503, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(-2.1959, -2.7912, -0.3853),
			[2] = Vector(-0.0993, 0.0264, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "M98_Body", rel = "", pos = Vector(0, -7.25, 0.2), angle = Angle(0, -90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_fas2_leupold"] = { type = "Model", model = "models/v_fas2_leupold.mdl", bone = "M98_Body", rel = "", pos = Vector(0, -12.025, 2.049), angle = Angle(0, -90, 0), size = Vector(1.75, 1.75, 1.75), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_fas2_leupold_mount"] = { type = "Model", model = "models/v_fas2_leupold_mounts.mdl", bone = "M98_Body", rel = "", pos = Vector(0, -12.025, 2.049), angle = Angle(0, -90, 0), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_sight_front"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bunneh_frontsight.mdl", bone = "M98_Body", rel = "", pos = Vector(-2.75, -11.25, 2.424), angle = Angle(0, -90, 0), size = Vector(1.25, 1.25, 1.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_sight_rear"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bunneh_rearsight.mdl", bone = "M98_Body", rel = "", pos = Vector(-2.826, -20.75, 2.424), angle = Angle(0, -90, 0), size = Vector(1.25, 1.25, 1.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "M98_Body", rel = "", pos = Vector(0.168, -4.244, -3.869), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["uecw_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "M98_Body", rel = "", pos = Vector(0.4, 3.18, 1.981), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["uecw_cmore"] = { type = "Model", model = "models/attachments/cmore.mdl", bone = "M98_Body", rel = "", pos = Vector(0.4, 1.649, 1.713), angle = Angle(0, 0, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "M98_Body", rel = "", pos = Vector(-0.322, -16.25, -3.82), angle = Angle(0, 0, 0), size = Vector(0.85, 0.85, 0.85), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0, -9.1413, 0.9797), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "M98_Body", material = ""},
		["uecw_bipod"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "M98_Body", rel = "", pos = Vector(0, -1.5, -1.351), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_ballistic"] = {model = "models/gmod4phun/uecw/attachments/optic_scope_ballistic.mdl", pos = Vector(0, -10.2749, 0.9937), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "M98_Body", material = ""},
		["md_eotech"] = { type = "Model", model = "models/wystan/attachments/2otech557sight.mdl", bone = "M98_Body", rel = "", pos = Vector(0.275, -21.851, -10.301), angle = Angle(3.5, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "M98_Body", rel = "", pos = Vector(0.419, 0.8, 1.94), angle = Angle(0, 180, 0), size = Vector(0.349, 0.349, 0.349), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "M98_Body", rel = "", pos = Vector(0.3, 9.8, 1.759), angle = Angle(0, 90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "M98_Body", rel = "", pos = Vector(0.4, 5.719, -2), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},
--		["uecw_csgo_optic_acog"] = { type = "Model", model = "models/kali/weapons/csgo/eq_optic_acog.mdl", bone = "M98_Body", rel = "", pos = Vector(0.439, -3.8, -1.351), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
--		["uecw_csgo_optic_sig"] = { type = "Model", model = "models/kali/weapons/csgo/eq_optic_sig.mdl", bone = "M98_Body", rel = "", pos = Vector(0.449, 1.6, 1.6), angle = Angle(0, -90, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_bender"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_bender.mdl", pos = Vector(0, -9.7932, 1), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "M98_Body", material = ""},
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, 14.2193, 0), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "M98_Body", material = ""},
		["uecw_csgo_silencer_ballistic"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_sniper.mdl", pos = Vector(0, 14.2193, 0), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "M98_Body", material = ""},
	}

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 2
end

SWEP.SightBGs = {main = 1, none = 0, def_scope = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.ADSFireAnim = true
SWEP.BipodFireAnim = true

SWEP.CustomizationMenuScale = 12/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {600, -500},  atts = {"md_eotech", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_bender", "uecw_ballistic", "uecw_def_scope"}},
	[2] = {header = "Barrel extension", offset = {100, -500}, atts = {"uecw_csgo_silencer_rifle", "uecw_csgo_silencer_ballistic"}},
	[3] = {header = "Handguard", offset = {-500, -500}, atts = {"uecw_bipod"}},
--	[4] = {header = "Misc", offset = {-500, 800}, atts = {"md_anpeq15"}},
	["+reload"] = {header = "Ammo", offset = {800, 0}, atts = {"am_magnum", "am_matchgrade"}}}
	
if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 1, "md_fas2_aimpoint" )
	table.insert( SWEP.Attachments[1].atts, 7, "md_fas2_leupold" )
end

--SWEP.AttachmentDependencies = {} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "m98_fire",
	fireDry = "m98_fire",
	reload = "m98_reload",
	reload_empty = "m98_reload_empty",
	idle = "m98_idle",
	draw = "m98_draw"}
	
SWEP.Sounds = {m98_reload = {[1] = {time = 0.6, sound = "UECW_M98_MAGTAP"},
	[2] = {time = 1.2, sound = "UECW_M98_MAGOUT"},
	[3] = {time = 2.0, sound = "UECW_M98_MAGCLOTH"},
	[4] = {time = 2.2, sound = "UECW_M98_MAGIN"},
	[5] = {time = 2.4, sound = "UECW_M98_MAGLOCK"}},
	m98_reload_empty = {[1] = {time = 0.6, sound = "UECW_M98_MAGTAP"},
	[2] = {time = 1.2, sound = "UECW_M98_MAGOUT"},
	[3] = {time = 2.0, sound = "UECW_M98_MAGCLOTH"},
	[4] = {time = 2.2, sound = "UECW_M98_MAGIN"},
	[5] = {time = 2.4, sound = "UECW_M98_MAGLOCK"},
	[6] = {time = 3+0.4, sound = "UECW_M98_BOLTFORWARD"},
	[7] = {time = 3+0.55, sound = "UECW_M98_BOLTBACK"},
	[8] = {time = 3.1+0.85, sound = "UECW_M98_BOLTPUSH"},
	[9] = {time = 3.1+1.1, sound = "UECW_M98_BOLTLOCK"}},
	m98_draw = {[1] = {time = 0.01, sound = "UECW_M98_DRAW"}},
	m98_fire = {[1] = {time = 0.85, sound = "UECW_M98_BOLTFORWARD"},
	[2] = {time = 1.05, sound = "UECW_M98_BOLTBACK"},
	[3] = {time = 1.3, sound = "UECW_M98_BOLTPUSH"},
	[4] = {time = 1.5, sound = "UECW_M98_BOLTLOCK"}}}

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
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_m98b.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_m98b.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".338 Lapua"

SWEP.FireDelay = 2.5
SWEP.FireSound = "UECW_M98_FIRE"
SWEP.FireSoundSuppressed = "UECW_M98_FIRE_SUPPRESSED"
SWEP.Recoil = 3.2

SWEP.HipSpread = 0.12
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 72
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 5
SWEP.ReloadHalt = 3.3
SWEP.ReloadHalt_Empty = 5.3
SWEP.SnapToIdlePostReload = true

end