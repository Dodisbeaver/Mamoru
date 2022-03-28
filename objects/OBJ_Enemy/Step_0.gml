/// @description Insert description here
// You can write your code in this editor
target = OBJ_Player;
cooldown -= 1;
AttackType = "Strong Punch";
if(CurrentHP < 0){

instance_destroy();

}

if(OnGround == true){
    GroundY = y;
}
depth = -1*GroundY;


switch (State){
 
    case "Idle":
		show_debug_message("case idl");
        event_user(0);
		event_user(1);
        break;
 
    case "PositionFront":
	show_debug_message("case posfrol");
        SideMod = 1;
        event_user(4);
        event_user(5);
        event_user(3);
        event_user(1);
        break;
 
    case "PositionBehind":
	show_debug_message("case posbehl");
        SideMod = -1;
        event_user(4);
        event_user(5);
        event_user(3);
        event_user(1);
        break;
	case "IsHit":
		speed = 0
		cooldown = 30;
		event_user(3);
		break;
}
//if(IsHit==true){
//    sprite_index = SPR_EnemyHit;
	
//}else if(object_exists(OBJ_Player)){
   

//}


//Enemy attacking

//if(distance_to_object(OBJ_Player) < 20 && cooldown <= 0 && !IsHit){
//	alarm[1] = room_speed*0.2;
//	State = "Attack";
//	AttackType = "";
//	cooldown = room_speed*1;
//}
