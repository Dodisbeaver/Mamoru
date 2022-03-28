/// @description Insert description here
// You can write your code in this editor
PlayerPosX = OBJ_Player.x;
PlayerPosY = OBJ_Player.y;

if (keyboard_check_pressed(ord("Z")) && Follow == true)
{
	Follow = false;
}

else if(keyboard_check_pressed(ord("Z")) && Follow == false)
	{
		Follow = true;
	}

if(Follow = true){
	move_towards_point(PlayerPosX-10,PlayerPosY,Speed);	
}else{
	speed = 0;
}
