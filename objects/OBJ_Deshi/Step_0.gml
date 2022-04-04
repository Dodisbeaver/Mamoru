/// @description Insert description here
// You can write your code in this editor
PlayerPosX = OBJ_Player.x;
PlayerPosY = OBJ_Player.y;

if (keyboard_check_pressed(ord("Z")) && Follow == true)
{
	Follow = false;
	speed = 0;
}

else if(keyboard_check_pressed(ord("Z")) && Follow == false)
	{
		Follow = true;
	}

if(Follow = true){
	if(point_distance(x,y,PlayerPosX-30,PlayerPosY)) > 2{
		move_towards_point(PlayerPosX-30,PlayerPosY,Speed);	
	}
	else{
		speed = 0;
	}
}
