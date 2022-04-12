/// @Check if in attackrange
// You can write your code in this editor
///Check Attack Chances
 
if(OnGround == true){
	//show_debug_message("usr_ev1");
    if(distance_to_object(target) <= AttackRange && abs(y-target.y) < LAYER_SIZE){
 
        Aggressiveness += .02;
 
        if(random(1) < Aggressiveness*.03){
 
            event_user(2);//Attack Event
 
        }
 
    }
 
}