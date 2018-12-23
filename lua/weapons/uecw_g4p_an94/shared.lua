if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AN-94"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.85
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.84
	SWEP.SightWithRail = true
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0
	
	SWEP.IronsightPos = Vector(-1.8, -1.497, 0.8)
	SWEP.IronsightAng = Vector(-0.828, 0.14, 0)
	
	SWEP.EoTechPos = Vector(-1.78, -3.859, -0.76)
	SWEP.EoTechAng = Vector(0, 0, 0)

	SWEP.AimpointPos = Vector(-1.735, -2.5, -0.55)
	SWEP.AimpointAng = Vector(0, 0.4, 0)

	SWEP.TrijiconPos = Vector(-1.8107, -2.9831, -0.5218)
	SWEP.TrijiconAng = Vector(0, 0, 0)

	SWEP.MicroT1Pos = Vector(-1.8, -4.2, -0.361)
	SWEP.MicroT1Ang = Vector(0, 0, 0)
	
	SWEP.CmorePos = Vector(-1.82, -4.016, -0.62)
	SWEP.CmoreAng = Vector(0, 0, 0)

	SWEP.ReflexPos = Vector(-1.8066, -3.4485, -0.5329)
	SWEP.ReflexAng = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(-1.785, -2.78, -0.76)
	SWEP.ACOGAng = Vector(0, 0, 0)

	SWEP.ELCANPos = Vector(-1.8217, -1.1751, -0.9254)
	SWEP.ELCANAng = Vector(0, 0, 0)

	SWEP.CSGOACOGPos = Vector(-1.8127, -3.78, -0.6489)
	SWEP.CSGOACOGAng = Vector(0, 0, 0)
	

	SWEP.CSGO556Pos = Vector(-1.8145, -2.5036, -0.4009)
	SWEP.CSGO556Ang = Vector(0, 0, 0)

	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.ShortDotPos = Vector(-1.83, -2.85, -0.765)
	SWEP.ShortDotAng = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(19.456, -15.451, 1.5188)
	SWEP.CustomizeAng = Vector(0, 90, 0)

	SWEP.BackupSights = {
		["uecw_elcan"] = {
			Vector(-1.8158, -1.1751, -1.703),
			Vector(0.0496, 0, 0)
		},
		
		["uecw_acog"] = {
			Vector(-1.7874, -1.9414, -1.6006),
			Vector(0, 0, 0)
		},

		["uecw_csgo_optic_sig"] = {
			Vector(-1.8145, -2.5036, -1.1567),
			Vector(0.7559, 0, 0),
		},
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = 0, y = 0, r = 0}
	SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.BaseArm = "Bip01 L Clavicle"
	SWEP.BaseArmBoneOffset = Vector(0, 0, 0)

	SWEP.AttachmentModelsVM = {
		["md_schmidt_shortdot"] = { type = "Model", model = "models/cw2/attachments/schmidt.mdl", bone = "body_mesh", rel = "", pos = Vector(3.885, -0.44, -3.33), angle = Angle(0, 180, 0), size = Vector(0.95, 0.95, 0.95), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_mag_ak_60"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/mag_ak74_60.mdl", bone = "mag_mesh", rel = "", pos = Vector(1.5335, 0, 3.6257), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_mag_ak_45"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/mag_ak74_45.mdl", bone = "mag_mesh", rel = "", pos = Vector(1.5335, 0, 3.6257), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_saker"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(-5.2601, 0.66, -1.9606), angle = Angle(0, -90, 0), size = Vector(0.6662, 0.6662, 0.6662), bone = "bolt_mesh"},
		["md_microt1"] = { type = "Model", model = "models/cw2/attachments/microt1.mdl", bone = "body_mesh", rel = "", pos = Vector(-1.558, -0.051, 2.14), angle = Angle(0, 90, 0), size = Vector(0.3, 0.3, 0.3), color = Color(255, 255, 255, 255)},
		["uecw_acog"] = { type = "Model", model = "models/wystan/attachments/2cog.mdl", bone = "body_mesh", rel = "", pos = Vector(2.856, -0.32, -2.208), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_elcan"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", bone = "body_mesh", rel = "", pos = Vector(-1.8556, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 1, bodygroup = {} },
		["md_aimpoint"] = { type = "Model", model = "models/wystan/attachments/aimpoint.mdl", bone = "body_mesh", rel = "", pos = Vector(2.86, -0.24, -2.158), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_reflex"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", bone = "body_mesh", rel = "", pos = Vector(-2.2064, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6501, 0.6501, 0.6501), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_cmore"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", bone = "body_mesh", rel = "", pos = Vector(-2.2064, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6501, 0.6501, 0.6501), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "body", rel = "", pos = Vector(-0.551, -2.34, -2.639), angle = Angle(0, 0, 0), size = Vector(0.75, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_trijicon"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", bone = "body_mesh", rel = "", pos = Vector(-2.2064, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6501, 0.6501, 0.6501), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_acog"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", bone = "body_mesh", rel = "", pos = Vector(-2.2064, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6501, 0.6501, 0.6501), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_optic_sig"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/csgo_optic_sig.mdl", bone = "body_mesh", rel = "", pos = Vector(-2.2064, -0.0740, 2.0546), angle = Angle(0, 180, 0), size = Vector(0.6501, 0.6501, 0.6501), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(-16.9226, 0.66, 0), angle = Angle(0, 180, 0), size = Vector(0.85, 0.85, 0.85), bone = "bolt_mesh"},
		["md_rail"] = { type = "Model", model = "models/gmod4phun/uecw/attachments/akrailmount_new.mdl", bone = "body_mesh", rel = "", pos = Vector(-1.6, -0.299, 0.68), angle = Angle(0, -90, 0), size = Vector(1, 0.75, 0.75), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
	
	SWEP.ForeGripHoldPos = {
		["l_ring_low"] = {vector = Vector(0, 0, 0), angle = Angle(19.048, 0, 0)},
		["l_middle_low"] = {vector = Vector(0, 0, 0), angle = Angle(47.618, 0, 0)},
		["l_ring_mid"] = {vector = Vector(0, 0, 0), angle = Angle(-13.334, 0, 0)},
		["l_middle_tip"] = {vector = Vector(0, 0, 0), angle = Angle(41.904, 0, 0)},
		["l_thumb_low"] = {vector = Vector(0, 0, 0), angle = Angle(20.951, 0, -28.571)},
		["l_wrist"] = {vector = Vector(0, 0, 0), angle = Angle(19.048, -2.534, 7.66)},
		["l_thumb_tip"] = {vector = Vector(0, 0, 0), angle = Angle(0, 95.237, 0)},
		["l_ring_tip"] = {vector = Vector(0, 0, 0), angle = Angle(60.951, 0, 0)},
		["l_pinky_tip"] = {vector = Vector(0, 0, 0), angle = Angle(85.713, 0, 0)},
		["l_thumb_mid"] = {vector = Vector(0, 0, 0), angle = Angle(0, 13.333, 0)},
		["l_pinky_low"] = {vector = Vector(0, 0, 0), angle = Angle(0, 0, -15.238)},
		["l_index_tip"] = {vector = Vector(0, 0, 0), angle = Angle(13.333, 0, 0)},
		["l_middle_mid"] = {vector = Vector(0, 0, 0), angle = Angle(-15.238, 0, 0)},
		["l_index_mid"] = {vector = Vector(0, 0, 0), angle = Angle(3.438, 0, 0)},
		["l_pinky_mid"] = {vector = Vector(0, 0, 0), angle = Angle(-28.571, 0, 0)},
		["l_forearm"] = {pos = Vector(2, -1.274, 1.055), angle = Angle(-1.905, 13.333, 87.619)},
		["l_index_low"] = {vector = Vector(0, 0, 0), angle = Angle(74.286, 0, -9.469)}
	}
	
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(-3.2, 0, 0)

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(2, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.MagBoneName = "mag_mesh"
	SWEP.MagBG = 1
	
	SWEP.HandsBG = 3
	
end

SWEP.LuaViewmodelRecoil = true

SWEP.CustomizationMenuScale = 13/1000

SWEP.Attachments = {[1] = {header = "Sight", offset = {900, -700},  atts = {"uecw_cmore", "uecw_reflex", "uecw_trijicon", "uecw_elcan", "md_aimpoint", "md_schmidt_shortdot", "uecw_acog", "uecw_csgo_optic_acog", "uecw_csgo_optic_sig"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Barrel extension", offset = {200, -600}, atts = {"md_saker", "uecw_csgo_silencer_rifle"}},
	[3] = {header = "Handguard", offset = {-450,-500}, atts = {"md_foregrip"}},
	[4] = {header = "Magazine", offset = {-250, 250}, atts = {"uecw_mag_ak_45", "uecw_mag_ak_60"}},
	["+reload"] = {header = "Ammo", offset = {600, 400}, atts = {"am_magnum", "am_matchgrade"}}}
	
SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"fire1", "fire2", "fire3"},
	fire_iron = "idle",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.65, sound = "UECW_AN94_MAGOUT"},
	[2] = {time = 1.95, sound = "UECW_AN94_MAGIN"},
	[3] = {time = 3, sound = "UECW_AN94_BOLT"}},
	reload_wet = {[1] = {time = 0.65, sound = "UECW_AN94_MAGOUT"},
	[2] = {time = 1.95, sound = "UECW_AN94_MAGIN"}},
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
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_an94.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_an94.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-98, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 0.1
SWEP.FireSound = "UECW_AN94_FIRE"
SWEP.FireSoundSuppressed = "UECW_AN94_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 31
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 4.5
SWEP.SnapToIdlePostReload = true

function SWEP:CycleFiremodes()
	t = self.FireModes
	
	if not t.last then
		t.last = 2
	else
		if not t[t.last + 1] then
			t.last = 1
		else
			t.last = t.last + 1
		end
	end
	
	if self.dt.State == CW_AIMING or self:isBipodDeployed() then
		if self.FireModes[t.last] == "safe" then
			t.last = 1
		end
	end
	
	if self.FireMode != self.FireModes[t.last] and self.FireModes[t.last] then
		CT = CurTime()
		self:SelectFiremode(self.FireModes[t.last])
		self:SetNextPrimaryFire(CT + 0.25)
		self:SetNextSecondaryFire(CT + 0.25)
		self.ReloadWait = CT + 0.25
	end
	
	if self.FireMode == "2burst" then
		self.FireDelay = 0.033
	else self.FireDelay = 0.1 end
	
end

end