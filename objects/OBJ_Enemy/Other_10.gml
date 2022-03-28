/// @Check if idle
// You can write your code in this editor

///Choose a State
 
var MyAction = floor(random(100));
 
switch(State){
     
    case "Idle":
		show_debug_message("Idle");
        if(distance_to_object(OBJ_Player) < SightRange){
            if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        break;
}