/// @description Insert description here
// You can write your code in this editor

 
view_vborder = 1024;
view_hborder = 576;
MyBR = instance_nearest(x+100,y,OBJ_Fight_Area);
 
view_visible[0] = true;
 
x = OBJ_Player.x;
y = OBJ_Player.y;
 
TargetX = x;
TargetY = y;
 
State = "Player";
 
MoveSpeed = 15;