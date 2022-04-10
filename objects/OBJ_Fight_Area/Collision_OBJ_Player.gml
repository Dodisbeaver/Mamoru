/// @description Insert description here
// You can write your code in this editor
//if(!Spawn_enemy && !IsActive){
//    IsActive = true;
//	Spawn_enemy = true;
//	alarm[0] = room_speed * 3;
//}

if(point_in_rectangle(OBJ_Player.x, OBJ_Player.y, LeftEdge+abs(OBJ_Player.sprite_width)/2+10, TopEdge+20, RightEdge-abs(OBJ_Player.sprite_width)/2-10, BottomEdge-20) && HasEnemies == true){
 
    IsActive = true;
	Destroy = true;
 
}
