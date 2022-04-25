/// @description Insert description here
// You can write your code in this editor
Speed = 7;
SpeedMod = Speed + 10;
XSpeed = 0;
YSpeed = 0;
Cooldown = 0;
IsAttacking = false;
AttackType = 0;
MaxHP = 100;
CurrentHP = MaxHP;
IsHit = false;
OnGround = true;
GroundY = y;
dead = false;
DeadCounter = 2;
image_speed = .75;
alarm[5] = room_speed;
alarm[7] = 20;
var MyCamera = instance_create_layer(x,y,"Instances", OBJ_Camera);

CommandList = ds_list_create();

