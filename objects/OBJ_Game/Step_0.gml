/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(ord("P"))){
	game_restart();}
	
if(!instance_exists(OBJ_Deshi) && global.gamestart) {
	gameover = true;
	global.musicTracker = -1;
	game_restart();
}
