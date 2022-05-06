/// @Check if idle
// You can write your code in this editor

///Choose a State
 
var MyAction = floor(random(100));
 
switch(State){
     
    case "Idle":
		//show_debug_message("Idle");
		
        if(distance_to_object(target) < SightRange){
            if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        break;
	case "PositionFront":
	case "PositionBehind":
     
    if(ds_list_size(OBJ_Player.EnemyList) >= 2 && ds_list_find_value(OBJ_Player.EnemyList,id) == -1){
        State = "Queueing";
		show_debug_message("echo");
        speed = 0;
    }
    break;
	case "Queueing":
    if(ds_list_size(OBJ_Player.EnemyList) < 2){
        ds_list_add(OBJ_Player.EnemyList, id);
		show_debug_message(id);
        if(x < OBJ_Player.x){
            State = "PositionBehind";
        }else{
            State = "PositionFront";
        }
    }
    break;
}