/// @description Insert description here
// You can write your code in this editor
if(instance_exists(OBJ_Enemy) && point_in_rectangle(OBJ_Enemy.x, OBJ_Enemy.y,LeftEdge,TopEdge,RightEdge,BottomEdge)){
	
    HasEnemies = true;
	if(instance_number(OBJ_Enemy) == 2)
	if(Spawn_Count != 0 && Spawn_enemy){
		
		inst = instance_create_layer(x + choose(-600, 600), y + choose(-300, 300), "Instances", OBJ_Enemy);
		Spawn_Count--;
	} 
	
}else{
 
    HasEnemies = false;
    IsActive = false;
	Spawn_enemy = false;
	//Spawn_Count = 5;
}