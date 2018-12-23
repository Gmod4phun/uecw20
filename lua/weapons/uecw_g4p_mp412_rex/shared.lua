if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "MP-412 REX"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.IconLetter = "f"
	killicon.AddFont("cw_deagle", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_pistol_rbull"
	SWEP.PosBasedMuz = true
	
	SWEP.DryFire = true
	
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 2, y = 0, z = 1}
		
	SWEP.MicroT1Pos = Vector(-2.115, -2.8, 0.04)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-2.328, -3.053, -0.35)
	SWEP.ELCANAng = Vector(0, 0, 0)
	
	SWEP.DocterPos = Vector(-2.346, -3, 0.275)
	SWEP.DocterAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.326, -2.126, 0.507)
	SWEP.IronsightAng = Vector(0.49, 0.14, 0)
	
	SWEP.ACOGPos = Vector(-2.32, -3.053, -0.518)
	SWEP.ACOGAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)

	SWEP.CustomizePos = Vector(9.3239, -10.6517, 0.6134)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.MoveType = 1
	
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.BackupSights = {
	["uecw_elcan"] = {[1] = Vector(-2.32, -3.053, -1), [2] = Vector(0.345, 0.1, 0)},
	["uecw_acog"] = {[1] = Vector(-2.32, -3.053, -1.395), [2] = Vector(0, 0, 0)}
	}
	
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = true
	SWEP.HUD_MagText = "CYLINDER: "

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.AttachmentModelsVM = {
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "MP412_Barrel", rel = "", pos = Vector(-0.28, -5, -1.963), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_docter"] = {model = "models/gmod4phun/uecw/attachments/optic_docter.mdl", pos = Vector(0, -1.2511, 2.5152), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5), bone = "MP412_Barrel", material = ""},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0, -0.6725, 2.5008), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5), bone = "MP412_Barrel", material = "", skin = 1},
	}
	
	SWEP.LaserPosAdjust = Vector(0, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(1, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 1

end

SWEP.BarrelBGs = {main = 1, regular = 0, compensator = 1, extended = 2}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Sight", offset = {-550, -400}, atts = {"uecw_docter", "uecw_acog", "uecw_elcan"}},
	["+reload"] = {header = "Ammo", offset = {-550, 100}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"fire1", "fire2"},
	fire_iron = "idle",
	fire_last_iron = "idle",
	reload = "reload",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.45, sound = "UECW_MP412_CYLINDEROPEN"},
	[2] = {time = 1.05, sound = "UECW_MP412_ROUNDSOUT"},
	[3] = {time = 2.55, sound = "UECW_MP412_ROUNDSIN"},
	[4] = {time = 3.35, sound = "UECW_MP412_CYLINDERCLOSE"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"double"}
SWEP.Base = "uecw_base"
SWEP.Category = "CW 2.0 - UECW"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_mp412_rex.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_mp412.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".357 Magnum"

SWEP.FireDelay = 0.235
SWEP.FireSound = "UECW_MP412_FIRE"
SWEP.FireSoundSuppressed = "UECW_MP412_FIRE"
SWEP.Recoil = 2.6

SWEP.HipSpread = 0.039
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.25
SWEP.Shots = 1
SWEP.Damage = 46
SWEP.DeployTime = 1
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 4
SWEP.ReloadHalt = 4

SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt_Empty = 4

end