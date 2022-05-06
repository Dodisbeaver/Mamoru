/// @description Insert description here
// You can write your code in this editor
Speed = 4;
SpeedMod = 1;
cooldown = 0;
IsHit = false;
target = OBJ_Deshi;
target = OBJ_Player;
CurrentHP = 80;
MaxHP = CurrentHP;

 
OnGround = true;
GroundY = y;
IsAttacking = false;
image_speed = .75;
alarm[3] = room_speed * 10;
SideMod = 1;
State = "Idle";
SightRange = 350;
Aggressiveness = 0;
//AttackRange = sprite_width/2+40;
AttackRange = sprite_width/2+55;

TargetX = x;
TargetY = y;