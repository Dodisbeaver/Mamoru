/// @description Insert description here
// You can write your code in this editor
if(instance_exists(OBJ_Enemy) && point_in_rectangle(OBJ_Enemy.x, OBJ_Enemy.y,LeftEdge,TopEdge,RightEdge,BottomEdge)){
	//show_debug_message(Spawn_enemy);
    HasEnemies = true;
	//show_debug_message(alarm_get(0));
	if(!Spawn_enemy){
	
		alarm[0] = room_speed * 3;
		Spawn_enemy = true;
	} 
	
}else{
	//show_debug_message("nospa");
    HasEnemies = false;
    IsActive = false;
	Spawn_enemy = false;
	if(Destroy)
	instance_destroy();
	
}