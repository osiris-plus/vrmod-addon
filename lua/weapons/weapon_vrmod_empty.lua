
SWEP.PrintName = "Empty Hand"

SWEP.Slot = 0
SWEP.SlotPos = 0

SWEP.Spawnable = true
SWEP.Category = "VRMOD"
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.WorldModel = ""

SWEP.DrawAmmo = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

function  SWEP:Deploy()
	self:SetHoldType( "normal" )
end

function SWEP:PrimaryAttack()
end

function SWEP:SecondaryAttack()
end