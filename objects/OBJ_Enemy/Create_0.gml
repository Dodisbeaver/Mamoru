/// @description Insert description here
// You can write your code in this editor
Speed = 4;
SpeedMod = 1;
cooldown = 0;
//IsHit = false;
 
MaxHP = 80;
CurrentHP = MaxHP;
 
OnGround = true;
GroundY = y;
IsAttacking = false;
image_speed = .75;

SideMod = 1;
State = "Idle";
SightRange = 350;
Aggressiveness = 0;
AttackRange = sprite_width/2+OBJ_Player.sprite_width/2;

TargetX = x;
TargetY = y;