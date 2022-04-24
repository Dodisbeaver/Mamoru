/// @description Insert description here
// You can write your code in this editor
if(onPlatform )
CurrentHP = platformHp;

if(mouse_check_button_pressed(mb_right)){
	mouseclicked = true;
//var MyBR = instance_nearest(x,y, OBJ_Fight_Area);
//Speed = 3
//	if(MyBR.IsActive){
	
//		if(place_meeting(x+Speed, y, OBJ_Wall)){
	
//while (!place_meeting(x+sign(Speed), y, OBJ_Wall)){
//	x = x + sign(Speed);
//}
//Speed = 0;
//	}
//if(place_meeting(x, y+Speed, OBJ_Wall)){
//while (!place_meeting(x, y+sign(Speed), OBJ_Wall)){
//	y = y + sign(Speed);
//}

//Speed = 0;

	
//	}
	
	
	
//}
	
	
//if(place_meeting(x+Speed, y, OBJ_WallBorder)){
	
//while (!place_meeting(x+sign(Speed), y, OBJ_WallBorder)){
//	x = x + sign(Speed);
//}
//Speed = 0;
//	}
//if(place_meeting(x, y+Speed, OBJ_WallBorder)){
//while (!place_meeting(x, y+sign(Speed), OBJ_WallBorder)){
//	y = y + sign(Speed);
//}

//Speed = 0;

	
//	}
	
	MouseFormerX = mouse_x;
	MouseFormerY = mouse_y;
	move_towards_point(MouseFormerX,MouseFormerY,Speed);	

	
	
alarm[0] = room_speed * 7;


}
if(point_distance(x,y,MouseFormerX,MouseFormerY)) < 2{
		speed = 0;	
	}

if(point_distance(x,y,OBJ_Player.x, OBJ_Player.y) > 200 && !mouseclicked && !onPlatform){
	move_towards_point(OBJ_Player.x,OBJ_Player.y,3);
} else if(point_distance(x,y,OBJ_Player.x, OBJ_Player.y) < 15){
	//if (!mouseclicked)
	speed = 0;
}


if(CurrentHP <= 0){
instance_destroy();
}


