/// @description Insert description here
// You can write your code in this editor
		if(IsActive && Spawn_enemy && Spawn_Count > 0) {
		
			show_debug_message("spawn");
		inst = instance_create_layer(x + choose(-300, 300), y + choose(-300, 300), "Instances", OBJ_Enemy);
		Spawn_Count--;
		alarm[0] = room_speed * irandom(9);
		inst.SightRange = 700;
		}
	
