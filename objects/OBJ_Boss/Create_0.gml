/// @description Insert description here
// You can write your code in this editor
Speed = 3;
SpeedMod = 1;
cooldown = 0;
IsHit = false;
target = OBJ_Player;
MaxHP = 700;
CurrentHP = MaxHP;
 
OnGround = true;
GroundY = y;
IsAttacking = false;
image_speed = .75;
//alarm[3] = room_speed * 10;
SideMod = 1;
State = "Idle";
SightRange = 350;
Aggressiveness = 0;
AttackRange = sprite_width/2+100;

TargetX = x;
TargetY = y;