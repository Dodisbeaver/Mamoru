/// @Attack Player
// You can write your code in this editor

///Attack Event

if(OBJ_Player.CurrentHP > 0){
	//show_debug_message("usr_ev2");
    AttackChance = random(100); 
 
    if((Aggressiveness>.75 && AttackChance>= 90) || (Aggressiveness>1 && AttackChance>= 75)){
 
        sprite_index = SPR_EnemyPunch;
		alarm[2] = 30;
        //MyAttack = instance_create_layer(x,y,"Instances", OBJ_Attack_StrongPunch);
 
    }else{
 
        sprite_index = SPR_EnemyPunch;
		alarm[2] = 10;
        //MyAttack = instance_create_layer(x,y, "Instances", OBJ_Attack_BasicPunch);
		
    }
     
    speed = 0;
    State = "Attacking";
    Aggressiveness = 0;
 
     
}