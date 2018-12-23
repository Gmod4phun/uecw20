if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Glock 17"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "f"
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = true
	
	SWEP.DryFire = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}

	SWEP.MicroT1Pos = Vector(-2.115, -2.8, 0.04)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.EoTechPos = Vector(-2.08, -2.8, 0.13)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.DocterPos = Vector(-2, 2.8, 0.85)
	SWEP.DocterAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.0115, 0.8193, 1.1313)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-2.247, -6.5, -0.602)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)

	SWEP.CustomizePos = Vector(8.6195, -14.5857, 1.4238)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.BoltBonePositionRecoverySpeed = 25 -- how fast does the bolt bone move back into it's initial position after the weapon has fired
	
	SWEP.AttachmentModelsVM = {
		["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", pos = Vector(0, 0.9823, 1.0153), angle = Angle(0, 90, 0), size = Vector(0.125, 0.125, 0.125), bone = "Glock18"},
		["uecw_docter"] = {model = "models/gmod4phun/uecw/attachments/optic_docter.mdl", pos = Vector(0.005, -0.86, 0.275), angle = Angle(0, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "Glock18 Slide", material = ""},
		["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", pos = Vector(0.007, 5.7304, -0.8469), angle = Angle(0, 180, 0), size = Vector(0.7, 0.7, 0.7), bone = "Glock18 Barrel"},
		["uecw_csgo_silencer_pistol"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_pistol.mdl", pos = Vector(0, 3.0479, 0), angle = Angle(180, 90, 180), size = Vector(1, 1, 1), bone = "Glock18 Barrel"},
		["uecw_csgo_taclight"] = {model = "models/gmod4phun/uecw/attachments/csgo_taclight.mdl", pos = Vector(0, 2.5365, 0.79), angle = Angle(0, -90, 0), size = Vector(0.9, 0.9, 0.9), bone = "Glock18"},
	}
	
	SWEP.LaserPosAdjust = Vector(0.2, 0, 0)
	SWEP.LaserAngAdjust = Angle(0, 180, 0)

	SWEP.HandsBG = 2
	
end

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.BulletBGs = {main = 4, default = 0, none = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false
SWEP.ADSFireAnim = true

SWEP.CustomizationMenuScale = 8.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -500}, atts = {"uecw_docter"}},
[2] = {header = "Barrel extension", offset = {-650, -400}, atts = {"md_tundra9mm", "uecw_csgo_silencer_pistol"}},
[3] = {header = "Rail", offset = {-600, 150}, atts = {"md_insight_x2", "uecw_csgo_taclight"}},
["+reload"] = {header = "Ammo", offset = {200, 300}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = "fire",
	fire_last = "fire_last",
	fire_iron = "fire_iron",
	fire_last_iron = "fire_last_iron",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	idle_empty = "idle_empty",
	draw = "draw",
	draw_empty = "draw_empty"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.4, sound = "UECW_GLOCK17_MAGOUT"},
	[2] = {time = 1.5, sound = "UECW_GLOCK17_MAGIN"},
	[3] = {time = 2.1, sound = "UECW_GLOCK17_SLIDE"}},
	
	reload_wet = {[1] = {time = 0.4, sound = "UECW_GLOCK17_MAGOUT"},
	[2] = {time = 1.5, sound = "UECW_GLOCK17_MAGIN"}},
	
	fire_last = {{time = 0.01, sound = "UECW_GLOCK17_SLIDE"}},
	fire_last_iron = {{time = 0.01, sound = "UECW_GLOCK17_SLIDE"}},
	idle_empty = {{time = 0.01, sound = "UECW_GLOCK17_SLIDE"}},
	
	draw = {[1] = {time = 0.1, sound = "UECW_GLOCK17_DRAW"}}}

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
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_glock17.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_glock17.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 17
SWEP.Primary.DefaultClip	= 17
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "UECW_GLOCK17_FIRE"
SWEP.FireSoundSuppressed = "UECW_GLOCK17_FIRE_SUPPRESSED"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.020
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 16
SWEP.DeployTime = 1
SWEP.Chamberable = true

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.2
SWEP.ReloadHalt = 2.2
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

end