/// @description Insert description here
// You can write your code in this editor

//menu_x += (menu_x_target - menu_x) / menu_speed;

//cont
if (menu_control){

	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = 1;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		
		menu_committed = menu_cursor;
		menu_control = false;
	
	}
	
}

if(menu_committed != -1) {
	
	switch (menu_committed){
			case 1: room_goto(Room2); global.gamestart = true; global.musicTracker = 1 break; global.gamerestart = false;
			case 0: game_end(); break;
	
	}




}
