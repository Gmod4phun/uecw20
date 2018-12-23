if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Five-seveN"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "f"
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	
	SWEP.DryFire = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	
	SWEP.CustomizePos = Vector(-3.8, -3.6, -2.8)
	SWEP.CustomizeAng = Vector(16.6, -28.4, -2.6)

	SWEP.MicroT1Pos = Vector(-2.115, -2.8, 0.04)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.08, -2.8, 0.13)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.DocterPos = Vector(2.61, 6.2, 1.26)
	SWEP.DocterAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(2.625, 5.2, 1.26)
	SWEP.IronsightAng = Vector(1.263, 0, 0)

	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)

	SWEP.CustomizePos = Vector(-7.9283, -11.036, 2.4364)
	SWEP.CustomizeAng = Vector(0, -90, 0)

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	
	SWEP.AttachmentModelsVM = {
		["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", pos = Vector(-1.3841, 0.0183, 0.16), angle = Angle(0, 0, -90), size = Vector(0.14, 0.14, 0.14), bone = "frame"},
		["uecw_docter"] = {model = "models/gmod4phun/uecw/attachments/optic_docter.mdl", pos = Vector(-0.45, 0.34, 0.165), angle = Angle(180, 0, -90), size = Vector(0.75, 0.75, 0.75), bone = "slide", material = ""},
		["uecw_csgo_silencer_pistol"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_pistol.mdl", pos = Vector(-4.12, -0.65, 0.165), angle = Angle(180, 0, 90), size = Vector(1, 1, 1), bone = "frame"},
		["uecw_csgo_taclight"] = {model = "models/gmod4phun/uecw/attachments/csgo_taclight.mdl", pos = Vector(-3.4246, 0.1037, 0.1543), angle = Angle(180, 0, -90), size = Vector(1, 1, 1), bone = "frame"},
	}

	SWEP.LaserPosAdjust = Vector(-0.2, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)
	
	SWEP.HandsBG = 3

end

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.BulletBGs = {main = 2, default = 0, none = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false
SWEP.ADSFireAnim = true

SWEP.CustomizationMenuScale = 7.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -500}, atts = {"uecw_docter"}},
[2] = {header = "Barrel extension", offset = {-500, -300}, atts = {"uecw_csgo_silencer_pistol"}},
[3] = {header = "Rail", offset = {-700, 200}, atts = {"md_insight_x2", "uecw_csgo_taclight"}},
["+reload"] = {header = "Ammo", offset = {400, 400}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"fire"},
	fire_iron = "fire",
	fire_last = "fire_last",
	fire_last_iron = "fire_last",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	idle_empty = "idle_empty",
	draw = "draw",
	draw_empty = "draw_empty"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.1, sound = "UECW_FIVESEVEN_MAGPOUCH"},
	[2] = {time = 0.6, sound = "UECW_FIVESEVEN_MAGOUT"},
	[3] = {time = 1.8, sound = "UECW_FIVESEVEN_MAGIN"},
	[4] = {time = 2.0, sound = "UECW_FIVESEVEN_MAGTAP"},
	[5] = {time = 2.5, sound = "UECW_FIVESEVEN_SLIDERELEASE"}},
	reload_wet = {[1] = {time = 0.1, sound = "UECW_FIVESEVEN_MAGPOUCH"},
	[2] = {time = 0.6, sound = "UECW_FIVESEVEN_MAGOUT"},
	[3] = {time = 1.8, sound = "UECW_FIVESEVEN_MAGIN"},
	[4] = {time = 2.0, sound = "UECW_FIVESEVEN_MAGTAP"}},
	fire_last = {[1] = {time = 0.01, sound = "UECW_FIVESEVEN_SLIDERELEASE"}},
	idle_empty = {[1] = {time = 0.01, sound = "UECW_FIVESEVEN_SLIDERELEASE"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"},
	{time = 0.6, sound = "UECW_FIVESEVEN_SAFETY"}},
	draw_empty = {{time = 0.01, sound = "UECW_XM8_CLOTH"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_fiveseven.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_fiveseven.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "5.7x28MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "UECW_FIVESEVEN_FIRE"
SWEP.FireSoundSuppressed = "UECW_FIVESEVEN_FIRE_SUPPRESSED"
SWEP.Recoil = 0.78

SWEP.HipSpread = 0.022
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = 1
SWEP.Chamberable = true

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3
SWEP.ReloadHalt = 3
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

end