/// @description Insert description here
// You can write your code in this editor
if(onPlatform )
CurrentHP = platformHp;
var nearPl = instance_nearest(x,y, OBJ_Platform);
if(distance_to_object(nearPl) > 60)
onPlatform = false;


if(keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face3)){
	
	followPlayer = !followPlayer;
	alarm[0] = room_speed * 7;
}

if( point_distance(x,y,OBJ_Player.x, OBJ_Player.y) < 25){
	//if (!mouseclicked)
	speed = 0;
} else if (followPlayer ) {
	move_towards_point(OBJ_Player.x,OBJ_Player.y, 4);
}

platformNear = instance_nearest(x,y, OBJ_Platform);

if(!followPlayer ) {
	if point_distance(x,y, platformNear.x,platformNear.y) < 5
	speed = 0;
	else if distance_to_object(platformNear) < 300 && !platformNear.timeOut
	move_towards_point(platformNear.x,platformNear.y,3);
	else
	speed = 0;
	
} 

//if(mouse_check_button_pressed(mb_right)){
//	mouseclicked = true;
	
//	MouseFormerX = mouse_x;
//	MouseFormerY = mouse_y;
//	move_towards_point(MouseFormerX,MouseFormerY,Speed);	



//}
//if(mouseclicked && point_distance(x,y,MouseFormerX,MouseFormerY)) < 2{
//		speed = 0;	
//	}

//if(point_distance(x,y,OBJ_Player.x, OBJ_Player.y) > 200 && !mouseclicked && !onPlatform){
//	move_towards_point(OBJ_Player.x,OBJ_Player.y,3);
//} else if(point_distance(x,y,OBJ_Player.x, OBJ_Player.y) < 15){
//	//if (!mouseclicked)
//	speed = 0;
//}

if(CurrentHP <= 0){
instance_destroy();
}

depth = -1*y;
