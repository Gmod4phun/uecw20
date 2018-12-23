if CustomizableWeaponry then

SWEP.magType = "pistolMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = " USP .40"
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
	
	SWEP.IronsightPos = Vector(-2.1075, 3.1, 0.75)
	SWEP.IronsightAng = Vector(0.165, 0, 0)

	SWEP.DocterPos = Vector(-2.0942, 3.1, 0.5771)
	SWEP.DocterAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(1.634, -8.28, -8.311)
	SWEP.SprintAng = Vector(70, 0, 0)
	
	SWEP.CustomizePos = Vector(11.3292, -13.5942, 1.6778)
	SWEP.CustomizeAng = Vector(0, 90, 0)


	SWEP.BackupSights = {["uecw_acog"] = {[1] = Vector(-2.241, -4.728, -1.568), [2] = Vector(0, 0, 0)}}
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 25 -- how fast does the bolt bone move back into it's initial position after the weapon has fired

	SWEP.AttachmentModelsVM = {
		["md_rail"] = { type = "Model", model = "models/cw2/attachments/pistolrail.mdl", bone = "gun", rel = "", pos = Vector(0, -0.5, 0.899), angle = Angle(0, -90, 0), size = Vector(0.097, 0.097, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_cobram2"] = { type = "Model", model = "models/cw2/attachments/cobra_m2.mdl", bone = "barrel", rel = "", pos = Vector(0.14, -5.603, 0.22), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_insight_x2"] = { type = "Model", model = "models/cw2/attachments/pistollaser.mdl", bone = "gun", rel = "", pos = Vector(0, -0.5, 0.899), angle = Angle(0, -90, 0), size = Vector(0.097, 0.097, 0.097), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "wpn_body", rel = "", pos = Vector(-0.24, -6.98, 1.74), angle = Angle(180, 90, 0), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255)},
		["uecw_docter"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_docter.mdl", bone = "slide", rel = "", pos = Vector(-0.0053, 2.2890, 0.5213), angle = Angle(0, 90, 0), size = Vector(0.5500, 0.5500, 0.5500), color = Color(255, 255, 255, 255)},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "slide", pos = Vector(-1.831, 3.892, 0.504), angle = Angle(-90, 0, -90), size = Vector(0.85, 0.85, 0.85)},
		["uecw_csgo_taclight"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_taclight.mdl", bone = "gun", rel = "", pos = Vector(0.0390, -1.7299, 0.7258), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255)},
		["uecw_csgo_silencer_pistol"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_sil_pistol.mdl", bone = "barrel", rel = "", pos = Vector(0.1348, -3.0490, 0.2331), angle = Angle(0, 90, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255)},		
	}

	SWEP.HoldBoltWhileEmpty = false
	SWEP.DontHoldWhenReloading = true
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(0, 0, 0)
	
	SWEP.LaserPosAdjust = Vector(0, 0, -0.5)
	SWEP.LaserAngAdjust = Angle(0, 180, 0) 
	
	SWEP.HandsBG = 2

end

SWEP.BarrelBGs = {main = 3, regular = 0, match = 1}
SWEP.BulletBGs = {main = 5, default = 0, none = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false
SWEP.ADSFireAnim = true

SWEP.CustomizationMenuScale = 9.5/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {450, -450}, atts = {"uecw_docter"}},
[2] = {header = "Barrel extension", offset = {-600, -350}, atts = {"md_cobram2", "uecw_csgo_silencer_pistol", "uecw_usp_match"}},
[3] = {header = "Rail", offset = {-500, 250}, atts = {"md_insight_x2", "uecw_csgo_taclight"}, exclusions = {uecw_usp_match = true}},
[4] = {header = "Skin", offset = {1000, 250}, atts = {"uecw_weapon_skin"}},
["+reload"] = {header = "Ammo", offset = {300, 450}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"fire1","fire2","fire3"},
	fire_iron = "fire_iron",
	fire_last = "fire_last",
	fire_last_iron = "fire_last_iron",
	reload = "reload_wet",
	reload_empty = "reload_dry",
	idle = "idle",
	idle_empty = "idle_empty",
	draw = "draw",
	draw_empty = "draw_empty"}
	
SWEP.Sounds = {reload_dry = {[1] = {time = 0.42, sound = "UECW_USP_MAGOUT"},
	[2] = {time = 1.5, sound = "UECW_USP_MAGIN"},
	[3] = {time = 2.2, sound = "UECW_USP_SLIDE"}},
	reload_wet = {[1] = {time = 0.42, sound = "UECW_USP_MAGOUT"},
	[2] = {time = 1.5, sound = "UECW_USP_MAGIN"}},
	fire_last = {{time = 0.01, sound = "UECW_USP_SLIDE"}},
	fire_last_iron = {{time = 0.01, sound = "UECW_USP_SLIDE"}},
	idle_empty = {{time = 0.01, sound = "UECW_USP_SLIDE"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"}},
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
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_usp_40.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_usp40.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 12
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".40 S&W"

SWEP.FireDelay = 0.12
SWEP.FireSound = "UECW_USP_FIRE"
SWEP.FireSoundSuppressed = "UECW_USP_FIRE_SUPPRESSED"
SWEP.Recoil = 0.82

SWEP.HipSpread = 0.018
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.32
SWEP.Shots = 1
SWEP.Damage = 18
SWEP.DeployTime = 1
SWEP.Chamberable = true

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2
SWEP.ReloadHalt = 2
SWEP.ReloadTime_Empty = 3
SWEP.ReloadHalt_Empty = 3
SWEP.SnapToIdlePostReload = true

end