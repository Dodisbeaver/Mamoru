/// @description Insert description here
// You can write your code in this editor
//Chekc movement input



moveRight = keyboard_check(ord("D"));

moveUp = keyboard_check(ord("W"));

moveLeft = keyboard_check(ord("A"));

moveDown = keyboard_check(ord("S"));

if(dead){
	if(dead && CurrentHP < 0){
	alarm[6] = room_speed * DeadCounter;
	CurrentHP = 100 - 2 * DeadCounter;
	}
	
	exit;
}





var MyBR = instance_nearest(x,y,OBJ_Fight_Area);
if(CurrentHP > 0){
	
	XSpeed = ((moveRight - moveLeft) * Speed);
	YSpeed = ((moveDown - moveUp) * Speed);
	
	
	//Koller om kollision med border
			if(place_meeting(x+XSpeed, y, OBJ_WallBorder)){
	
while (!place_meeting(x+sign(XSpeed), y, OBJ_WallBorder)){
	x = x + sign(XSpeed);
}
XSpeed = 0;
	}
if(place_meeting(x, y+YSpeed, OBJ_WallBorder)){
while (!place_meeting(x, y+sign(YSpeed), OBJ_WallBorder)){
	y = y + sign(YSpeed);
}

YSpeed = 0;

	
	}
	
	
	
	
	//Kollar om kollision med fightwall
	
	
	if(MyBR.IsActive){
	
		if(place_meeting(x+XSpeed, y, OBJ_Wall)){
	
while (!place_meeting(x+sign(XSpeed), y, OBJ_Wall)){
	x = x + sign(XSpeed);
}
XSpeed = 0;
	}
if(place_meeting(x, y+YSpeed, OBJ_Wall)){
while (!place_meeting(x, y+sign(YSpeed), OBJ_Wall)){
	y = y + sign(YSpeed);
}

YSpeed = 0;

	
	}
	
	
	
}
	
	
if(IsHit){
sprite_index = SPR_PlayerHit;
}

	
if(IsAttacking == false && IsHit = false){
//if(MyBR.IsActive == true){
//		if(point_in_rectangle(x+XSpeed*SpeedMod, y, MyBR.LeftEdge, MyBR.TopEdge-100, MyBR.RightEdge, MyBR.BottomEdge-270)==false ||  place_free(x+XSpeed*SpeedMod, y)==false){
//        XSpeed = 0;
//			}  
     
//		if(point_in_rectangle(x, y+YSpeed*SpeedMod, MyBR.LeftEdge, MyBR.TopEdge-100, MyBR.RightEdge, MyBR.BottomEdge-270)==false || place_free(x, y+YSpeed*SpeedMod)==false){
//        YSpeed = 0;
//			}
			
		
//	}

		Cooldown -= 1;
		//Check if moving x and y at same time
		//If the player is on the ground move them with XSpeed and YSpeed, otherwise ignore YSpeed

		if(OnGround == true) {
		if(XSpeed != 0 && YSpeed != 0){
		x += XSpeed * 0.7;
		y += YSpeed * 0.7;
		} else{
	
		x += XSpeed;
		y += YSpeed;
		}
		} else {
		x += XSpeed;
		}


    //Change the direction of the Player's sprite based on the direction they're moving
     if(XSpeed != 0){
    image_xscale = sign(XSpeed);
	}
    //Animate the Player based on what they're doing.
	if(XSpeed == 0 && YSpeed == 0 && OnGround == true){
    SpeedMod = 1;
    sprite_index = SPR_PlayerIdle;
	}else if((XSpeed!=0 || YSpeed != 0) && sprite_index!=SPR_PlayerWalking && OnGround == true){
    sprite_index = SPR_PlayerWalking;
	}
}

}else{
    event_user(1);
}
//If the player is on the ground, this sets their GroundY variable to their current y position
if(OnGround == true){
    GroundY = y;
}
//Sets the Players' depth based on their GroundY. We're using GroundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1*GroundY;