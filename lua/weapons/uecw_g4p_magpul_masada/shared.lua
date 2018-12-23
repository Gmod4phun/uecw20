if CustomizableWeaponry then

SWEP.magType = "arMag"

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Magpul Masada"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_ar15", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.7
	--SWEP.ShellOffsetMul = 1
	--SWEP.ShellPosOffset = {x = 16, y = 12, z = -1}
	SWEP.InvertShellEjectAngle = false
	
	SWEP.ForeGripOffsetCycle_Draw = 0.4
	SWEP.ForeGripOffsetCycle_Reload = 0.87
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.MagInsertOffsetCycle = 0.46
	SWEP.MagInsertOffsetCycle_Empty = 0.36
	
	SWEP.M203OffsetCycle_Reload = 0.65
	SWEP.M203OffsetCycle_Reload_Empty = 0.73
	SWEP.M203OffsetCycle_Draw = 0

	SWEP.IronsightPos = Vector(2.012, -3.28, 0.773)
	SWEP.IronsightAng = Vector(0, 0, 0)
	
	SWEP.FoldSightPos = Vector(-2.208, -4.3, 0.143)
	SWEP.FoldSightAng = Vector(0.605, 0, -0.217)

	SWEP.CmorePos = Vector(2.0213, -2.4, 0.8636)
	SWEP.CmoreAng = Vector()

	SWEP.ELCANPos = Vector(2.0267, -2.6478, 0.4215)
	SWEP.ELCANAng = Vector()

	SWEP.EoTechPos = Vector(2.0376, -3.28, 0.6283)
	SWEP.EoTechAng = Vector()

	SWEP.AimpointPos = Vector(2.0361, -3.28, 0.7225)
	SWEP.AimpointAng = Vector()

	SWEP.MicroT1Pos = Vector(2.042, -3.28, 0.9)
	SWEP.MicroT1Ang = Vector(0, 0, 0)

	SWEP.ACOGPos = Vector(1.998, -3.096, 0.479)
	SWEP.ACOGAng = Vector()

	SWEP.ReflexPos = Vector(2.02, -2.8, 0.99)
	SWEP.ReflexAng = Vector(0, 0, 0)
	
	SWEP.BallisticPos = Vector(2.02, -2.8, 0.760)
	SWEP.BallisticAng = Vector(0, 0, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)

	SWEP.TrijiconPos = Vector(2.0187, -2.8533, 0.9416)
	SWEP.TrijiconAng = Vector()

	SWEP.CSGOACOGPos = Vector(2.02, -4.255, 0.7575)
	SWEP.CSGOACOGAng = Vector()

	SWEP.FAS2AimpointPos = Vector(2.039, -4.02, 0.639)
	SWEP.FAS2AimpointAng = Vector(-0.4, 0.075, 0)
	
	SWEP.SprintPos = Vector(-3.401, -2.201, 1.399)
	SWEP.SprintAng = Vector(-15.801, -34.401, 0)

	SWEP.CustomizePos = Vector(-18.1182, -15.9032, 2.2446)
	SWEP.CustomizeAng = Vector(0, -90, 0)

	SWEP.BackupSights = {

		["uecw_elcan"] = {
			[1] = Vector(2.0181, -2.6478, -0.4808),
			[2] = Vector(0.0492, -0.0526, 0),
		},

		["uecw_acog"] = {
			[1] = Vector(1.998, -1.952, -0.6281),
			[2] = Vector(-0.0828, 0.0073, 0),
		},


	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	
	SWEP.BaseArm = "Right_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.MagBG = 4
	SWEP.AttachmentModelsVM = {
		["uecw_cmag"] = {model = "models/gmod4phun/uecw/attachments/mag_cmag.mdl", pos = Vector(0, -0.375, -2.215), angle = Angle(180, 90, 0), size = Vector(0.885, 0.885, 0.885), bone = "magazine", skin = 3},
		["uecw_mag_quad"] = {model = "models/gmod4phun/uecw/attachments/mag_quadmag.mdl", pos = Vector(0, -0.375, -2.215), angle = Angle(180, 90, 0), size = Vector(0.885, 0.885, 0.885), bone = "magazine", skin = 3},
		["uecw_mag_usgi"] = {model = "models/gmod4phun/uecw/attachments/mag_usgi.mdl", pos = Vector(0, -0.375, -2.215), angle = Angle(180, 90, 0), size = Vector(0.885, 0.885, 0.885), bone = "magazine", skin = 3},
		["uecw_mag_emag"] = {model = "models/gmod4phun/uecw/attachments/mag_emag.mdl", pos = Vector(0, -0.375, -2.215), angle = Angle(180, 90, 0), size = Vector(0.885, 0.885, 0.885), bone = "magazine", skin = 3},
		["uecw_mag_pmag"] = {model = "models/gmod4phun/uecw/attachments/mag_pmag30.mdl", pos = Vector(0, -0.375, -2.215), angle = Angle(180, 90, 0), size = Vector(0.885, 0.885, 0.885), bone = "magazine", skin = 3},
		["uecw_ballistic"] = { type = "Model", model = "models/bunneh/scope01.mdl", bone = "smdimport", rel = "", pos = Vector(1.315, -5, -3.08), angle = Angle(0, -90, -180), size = Vector(1.039, 1.039, 1.039), color = Color(255, 255, 255, 255)},
		["uecw_reflex"] = {model = "models/gmod4phun/uecw/attachments/optic_reflex.mdl", pos = Vector(0, 3, -2.52), angle = Angle(0, -90, 180), size = Vector(0.699, 0.699, 0.699), bone = "smdimport"},
		["uecw_cmore"] = {model = "models/gmod4phun/uecw/attachments/optic_cmore.mdl", pos = Vector(0, 3, -2.52), angle = Angle(0, -90, 180), size = Vector(0.699, 0.699, 0.699), bone = "smdimport"},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0.26, -3.6, 3.1), angle = Angle(180, 0, 0), size = Vector(1, 1, 1)},
		["uecw_elcan"] = {model = "models/gmod4phun/uecw/attachments/optic_elcan.mdl", pos = Vector(0, 3, -2.52), angle = Angle(0, -90, 180), size = Vector(0.699, 0.699, 0.699), bone = "smdimport"},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-0.26, -8.0614, 8.6866), angle = Angle(-177, 90, 0), size = Vector(1, 1, 1), bone = "smdimport"},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "smdimport", rel = "", pos = Vector(-0.419, 20.406, 1.975), angle = Angle(0, 0, 180), size = Vector(0.699, 0.699, 0.699)},
		["uecw_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "smdimport", pos = Vector(0.34, -2.9, 3.2), angle = Angle(180, 0, 0), size = Vector(1, 1, 1)},
		["md_anpeq15"] = {model = "models/cw2/attachments/anpeq15.mdl", bone = "smdimport", pos = Vector(0.2, 10.9, -2.5), angle = Angle(180, -90, 0), size = Vector(0.6, 0.6, 0.6)},
		["uecw_bipod"] = {model = "models/gmod4phun/uecw/attachments/bipod.mdl", bone = "smdimport", rel = "", pos = Vector(0.1, 13.369, 0.74), angle = Angle(0, -90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
		["uecw_csgo_silencer_rifle"] = {model = "models/gmod4phun/uecw/attachments/csgo_sil_rifle.mdl", pos = Vector(0, 18.6179, -1.1123), angle = Angle(0, -90, 180), size = Vector(1, 1, 1), bone = "smdimport"},
		["uecw_trijicon"] = {model = "models/gmod4phun/uecw/attachments/optic_trijicon_reflex.mdl", pos = Vector(0, 3, -2.52), angle = Angle(0, -90, 180), size = Vector(0.725, 0.725, 0.725), bone = "smdimport"},
		["uecw_csgo_optic_acog"] = {model = "models/gmod4phun/uecw/attachments/csgo_optic_acog.mdl", pos = Vector(0, 3, -2.52), angle = Angle(0, -90, 180), size = Vector(0.75, 0.75, 0.75), bone = "smdimport"},
		["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint.mdl", bone = "smdimport", rel = "", pos = Vector(0, 6.4, -2), angle = Angle(180, 90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroups = {[4] = 1} },
		["md_m203"] = {model = "models/cw2/attachments/m203.mdl", bone = "smdimport", rel = "", pos = Vector(-1.64, -1, -2), angle = Angle(180, 90, 0), size = Vector(0.699, 0.699, 0.699), animated = true},
	}
	
	SWEP.M203HoldPos = {
		["Right_U_Arm"] = { scale = Vector(1, 1, 1), pos = Vector(-2, -2, -1), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
	['Bone06'] = {pos = Vector(0, 0, 0), angle = Angle(88.449996948242, 0, 0)},
	['Bone10'] = {pos = Vector(0, 0, 0), angle = Angle(62.006000518799, 0, 0)},
	['Bone12'] = {pos = Vector(0, 0, 0), angle = Angle(37.987998962402, 0, 0)},
	['Bone24'] = {pos = Vector(0, 0, 0), angle = Angle(0, -84.275001525879, 0)},
	['Bone22'] = {pos = Vector(0, 0, 0), angle = Angle(11.244000434875, -1.7690000534058, 13.89999961853)},
	['Bone23'] = {pos = Vector(0, 0, 0), angle = Angle(0.64999997615814, -37.838001251221, 0)},
	['Bone16'] = {pos = Vector(0, 0, 0), angle = Angle(63.831001281738, 0, 0)},
	['Right_L_Arm'] = {pos = Vector(-1, -0.9, 0.3), angle = Angle(-15.463000297546, 0, -87.300003051758)},
	['Right_Hand'] = {pos = Vector(0, 0, 0), angle = Angle(0, 19.386999130249, 0)},
	['Bone18'] = {pos = Vector(0, 0, 0), angle = Angle(28.062999725342, -13.137999534607, 0)},
	['Bone08'] = {pos = Vector(0, 0, 0), angle = Angle(18.218999862671, 0, 0)},
	['Bone14'] = {pos = Vector(0, 0, 0), angle = Angle(53.325000762939, 0, 0)},
	['Bone20'] = {pos = Vector(0, 0, 0), angle = Angle(48.137001037598, 0, 0)}
	}
	
	SWEP.BoltBone = "cover" -- okay then, dont move the charging handle :D
	SWEP.BoltShootOffset = Vector(0, -3.2, 0)
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true

	SWEP.LaserPosAdjust = Vector(1, 0, 0)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	
	SWEP.HandsBG = 5
	
function SWEP:RenderTargetFunc()
	
	if !self.SkinSilencerInstalled then -- if we dont have skin silencer, hide it
		self.CW_VM:SetBodygroup(3,0)
	else
		self.CW_VM:SetBodygroup(3,1)
	end

end

end

SWEP.SightBGs = {main = 1, carryhandle = 0, none = 1}
SWEP.BarrelBGs = {regular = 0}
SWEP.LuaViewmodelRecoil = false
SWEP.BipodFireAnim = true
SWEP.CustomizationMenuScale = 0.01

SWEP.Attachments = {[1] = {header = "Sight", offset = {200, -500},  atts = { "uecw_cmore", "uecw_reflex", "uecw_trijicon", "md_eotech", "md_aimpoint", "uecw_elcan", "uecw_acog", "uecw_csgo_optic_acog"}, exclusions = {bg_ris = true, bg_longbarrel = true}},
	[2] = {header = "Barrel extension", offset = {-400, -500}, atts = {"uecw_csgo_silencer_rifle", "uecw_skin_silencer"}},
	[3] = {header = "Handguard", offset = {-400, 0}, atts = {"md_foregrip", "uecw_bipod"}},
	[4] = {header = "Rail", offset = {250, 400}, atts = {"md_anpeq15"}},
	[5] = {header = "Magazine", offset = {250, 700}, atts = {"uecw_mag_pmag", "uecw_mag_usgi", "uecw_mag_emag", "uecw_mag_quad", "uecw_cmag"}},
	[6] = {header = "Skin", offset = {1500, 700}, atts = {"uecw_weapon_skin"}},
	["+reload"] = {header = "Ammo", offset = {800, 0}, atts = {"am_magnum", "am_matchgrade"}}}

if CustomizableWeaponry_KK_HK416 then
	table.insert( SWEP.Attachments[1].atts, 7, "md_fas2_aimpoint" )
end

--SWEP.AttachmentDependencies = {["md_m203"] = {"bg_longris"}} -- this is on a PER ATTACHMENT basis, NOTE: the exclusions and dependencies in the Attachments table is PER CATEGORY

SWEP.Animations = {fire = {"shoot1", "shoot2", "shoot3"},
	fire_iron = "idle",
	fire_last_iron = "idle",
	reload = "reload_wet",
	reload_empty = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {reload = {[1] = {time = 0.9, sound = "UECW_MAGPUL_MASADA_MAGOUT"},
	[2] = {time = 1.8, sound = "UECW_MAGPUL_MASADA_MAGIN"},
	[3] = {time = 2.4, sound = "UECW_MAGPUL_MASADA_BOLT"}},
	reload_wet = {[1] = {time = 0.9, sound = "UECW_MAGPUL_MASADA_MAGOUT"},
	[2] = {time = 1.8, sound = "UECW_MAGPUL_MASADA_MAGIN"}},
	draw = {{time = 0.01, sound = "UECW_XM8_CLOTH"},
	{time = 0.5, sound = "UECW_MAGPUL_MASADA_DRAW"}}}
	

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
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/gmod4phun/uecw/weapons/v_magpul_masada.mdl"

-- WORLD MODEL
SWEP.DrawTraditionalWorldModel = false
SWEP.WorldModel	= "models/gmod4phun/uecw/weapons/w_masada.mdl"
SWEP.WM = SWEP.WorldModel
SWEP.WMPos = Vector(0, 0, 0)
SWEP.WMAng = Vector(-95, -90, -90)
-- WORLD MODEL

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "UECW_MAGPUL_MASADA_FIRE"
SWEP.FireSoundSuppressed = "UECW_MAGPUL_MASADA_FIRE_SUPPRESSED"
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
SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 2.5
SWEP.ReloadHalt_Empty = 3.5
SWEP.SnapToIdlePostReload = true

end