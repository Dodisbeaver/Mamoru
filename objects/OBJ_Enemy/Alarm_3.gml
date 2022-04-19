/// @description Insert description here
// You can write your code in this editor
if(instance_exists(OBJ_Deshi))
target = OBJ_Deshi;
else{
target = OBJ_Player;


}
alarm[3] = room_speed * irandom(6);
