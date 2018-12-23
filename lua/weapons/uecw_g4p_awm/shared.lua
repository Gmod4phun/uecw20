if CustomizableWeaponry then

SWEP.magType = "srMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AWM"
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
	SWEP.ShellDelay = 0.65
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
	
	SWEP.IronsightPos = Vector(-2.722, -1.882, 0.43)
	SWEP.IronsightAng = Vector(0.33, 0.15, 0)

	SWEP.DefScopePos = Vector(-2.7561, -1.4071, 0.5266)
	SWEP.DefScopeAng = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.7637, -2.1144, 0.0425)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(-2.766, -2, 0.5211)
	SWEP.AimpointAng = Vector()

	SWEP.ReflexPos = Vector(-2.76, -2.8, 0.5343)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.BallisticPos = Vector(-2.7586, -0.4786, 0.1645)
	SWEP.BallisticAng = Vector(0, 0, 0)

	SWEP.CmorePos = Vector(-2.76, -2.3012, 0.4215)
	SWEP.CmoreAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-2.76, -2.8, 0.62)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.7467, -3.4705, 0.3495)
	SWEP.ACOGAng = Vector()

	SWEP.CSGOACOGPos = Vector(-2.7626, -3.5478, 0.4137)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)

	SWEP.CSGO556Pos = Vector(-2.7639, -2.5484, 0.6571)
	SWEP.CSGO556Ang = Vector()

	SWEP.CSGOSSGPos = Vector(-2.7601, -1.9019, 0.3782)
	SWEP.CSGOSSGAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.7659, -1.3876, 0.0234)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.FAS2AimpointPos = Vector(-2.78, -2.8, 0.326)
	SWEP.FAS2AimpointAng = Vector(0, 0, 0)

	SWEP.LeupoldPos = Vector(-2.7677, -4.2536, 0.3066)
	SWEP.LeupoldAng = Vector()

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(22.6374, -16.3044, 2.1974)
	SWEP.CustomizeAng = Vector(0, 90, 0)
	
	SWEP.BackupSights = {
		["uecw_elcan"] = {
			Vector(-2.7586, -1.3876, -0.8093),
			Vector(0, 0, 0),
		},
		
		["uecw_acog"] = {
			[1] = Vector(-2.7467, -2.1704, -0.488),
			[2] = Vector(),
		},

		["uecw_csgo_optic_sig"] = {
			[1] = Vector(-2.7619, -2.5484, -0.0904),
			[2] = Vector(0.731, 0, 0),
		},

	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_fas2_leupold"] = { type = "Model", model = "models/v_fas2_leupold.mdl", bone = "Base", rel = "", pos = Vector(0, -2.34, 1.679), angle = Angle(0, -90, 0), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {[3] = 2} },
		["md_fas2_leupold_mount"] = { type = "Model", model = "models/v_fas2_leupold_mounts.mdl", bone = "Base", rel = "", pos = Vector(0, -2.34, 1.679), angle = Angle(0, -90, 0), size = Vector(1.5, 1.5, 1.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {} },
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "Base", rel = "", pos = Vector(0, 1.799, 0.18), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {[4] = 1, [2] = 1, [3] = 1} },
		["md_rail"] = { type = "Model", model = "models/wystan/attachments/rail.mdl", bone = "Base", rel = "", pos = Vector(0.237, 0.159, -1.209), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = true },
		["md_sight_front"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bunneh_frontsight.mdl", bone = "Base", rel = "", pos = Vector(-2.245, 11.534, 1.524), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, },
        ["md_sight_rear"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bunneh_rearsight.mdl", bone = "Base", rel = "", pos = Vector(-2.224, -9.171, 1.763), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "Base", rel = "", pos = Vector(-0.181, -6.19, -3.939), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_reflex"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_cmore"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "Base", rel = "", pos = Vector(-0.251, -5.538, -3.681), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_elcan"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 1, bodygroups = {[1] = 1} },
		["uecw_bipod"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "Base", rel = "", pos = Vector(0.105, 9.359, -2.06), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), bodygroup = {1,1}},
		["uecw_ballistic"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_scope_ballistic.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(0.3011, -12.8437, -11.5297), angle = Angle(2, -90, 0), size = Vector(1.1, 1.1, 1.1), bone = "Base", material = ""},
		["md_saker"] = { type = "Model", model = "models/cw2/attachments/556suppressor.mdl", bone = "Base", rel = "", pos = Vector(0, 2.2, -2.901), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "Base", rel = "", pos = Vector(0.059, 14, -0.12), angle = Angle(-180, -90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_acog"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_sig"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_bender"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_optic_bender.mdl", bone = "Base", rel = "", pos = Vector(0.0060, -1.0252, 0.6311), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_silencer_ballistic"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_sil_sniper.mdl", bone = "Base", rel = "", pos = Vector(0, 19.8, 0.06), angle = Angle(0, -90, 0), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255)},
		["uecw_csgo_silencer_rifle"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", bone = "Base", rel = "", pos = Vector(0, 19.8, 0.06), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},
}

	SWEP.LaserPosAdjust = Vector(0.4, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.CustomizationMenuScale = 0.014
	
	SWEP.HandsBG = 1
end

SWEP.SightBGs = {main = 2, none = 0, def_scope = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.ADSFireAnim = true
SWEP.BipodFireAnim = true

SWEP.CustomizationMenuScale = 16/1000

SWEP.Attachments = {
	{header = "Sight", offset = {500, -600},  atts = { "uecw_cmore", "uecw_reflex", "uecw_elcan", "md_eotech", "md_aimpoint", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig", "uecw_csgo_optic_bender", "uecw_ballistic", "uecw_def_scope"}},
	{header = "Barrel extension", offset = {-300, -550}, atts = {"uecw_csgo_silencer_rifle", "uecw_csgo_silencer_ballistic"}},
	{header = "Handguard", offset = {-200, 250}, atts = {"uecw_bipod"}},
	["+reload"] = {header = "Ammo", offset = {1200, 400}, atts = {"am_magnum", "am_matchgrade"}}
}

if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 7, "md_fas2_aimpoint" )
	table.insert( SWEP.Attachments[1].atts, 11, "md_fas2_leupold" )
end
	
--SWEP.AttachmentDependencies = {} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = "fire",
	--fire_iron = "fire",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {{time = 0.5, sound = "UECW_AWM_CLIPTAP"},
	{time = 0.8, sound = "UECW_AWM_CLIPOUT"},
	{time = 1.6, sound = "UECW_AWM_CLIPIN"},
	{time = 2.1, sound = "UECW_AWM_CLIPTAP"},
	{time = 2.5, sound = "UECW_AWM_BOLTBACK"},
	{time = 3.0, sound = "UECW_AWM_BOLTPUSH"},
	{time = 3.35, sound = "UECW_AWM_BOLTLOCK"}},
	reload_wet = {{time = 0.5, sound = "UECW_AWM_CLIPTAP"},
	{time = 0.8, sound = "UECW_AWM_CLIPOUT"},
	{time = 1.6, sound = "UECW_AWM_CLIPIN"},
	{time = 2.1, sound = "UECW_AWM_CLIPTAP"}},
	fire = {{time = 0.15, sound = "UECW_AWM_BOLTBACK"},
	{time = 0.65, sound = "UECW_AWM_BOLTPUSH"},
	{time = 1, sound = "UECW_AWM_BOLTLOCK"}},
	draw = {{time = 0.01, sound = "UECW_AWM_DRAW"}}}

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
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_awm.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_awm.mdl"
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

SWEP.FireDelay = 1.6
SWEP.FireSound = "UECW_AWP_FIRE"
SWEP.FireSoundSuppressed = "UECW_AWP_FIRE_SUPPRESSED"
SWEP.Recoil = 3.4

SWEP.HipSpread = 0.16
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 62
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.8
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 2.8
SWEP.ReloadHalt_Empty = 4
SWEP.SnapToIdlePostReload = true

end