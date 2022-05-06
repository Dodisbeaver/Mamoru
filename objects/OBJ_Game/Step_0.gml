/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("P")) && global.gamestart){
	alarm[0] = 15;
	}
	
if(!instance_exists(OBJ_Deshi) && global.gamestart && !global.gameover) {
	
	//global.musicTracker = -1;
	game_set_speed(10, gamespeed_fps);
	OBJ_Player.CurrentHP = 0;
	alarm[0] = room_speed * 10;
	alarm[2] = room_speed;
	global.gameover = true;

}

if(keyboard_check(vk_enter) && global.gameover){
	
	game_end();

}

if(!instance_exists(OBJ_Boss) && global.gamestart && !global.gameWin){
	game_set_speed(10, gamespeed_fps);
	alarm[0] = room_speed * 10;
	alarm[2] = room_speed;
	global.gameWin = true;
}
