/// @Check if in attackrange
// You can write your code in this editor
///Check Attack Chances
 
if(OnGround == true){
	show_debug_message("usr_ev1");
    if(distance_to_object(OBJ_Player) <= AttackRange && abs(y-OBJ_Player.y) < LAYER_SIZE){
 
        Aggressiveness += .02;
 
        if(random(1) < Aggressiveness*.03){
 
            event_user(2);//Attack Event
 
        }
 
    }
 
}