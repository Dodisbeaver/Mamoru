/// @description Insert description here
// You can write your code in this editor
randomize();
global.gameover = false;
global.gamestart = false;
global.gamerestart = false;
global.music = audio_play_sound(HuggtandreDjManjigoo, 1000, true);
global.restarted = false;
global.musicTracker = -1;
global.score = 0;
global.enemyList = ds_list_create();
global.gameWin = false;
global.gotonext = false;


counter = 10;
alarm[1] = room_speed;


gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

menu_x = gui_width/2;

menu_y = gui_height/2;

menu_itemheight = font_get_size(Font_pixel);


menu[0] = "Game Over";
menu[1] = "Score: ";
menu[2] = "Quit? Press enter";

menu_items = array_length(menu);
