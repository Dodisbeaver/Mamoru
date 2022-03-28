/// @description Insert description here
// You can write your code in this editor
var MyAttack = 0;
 
if(IsHit == false && CurrentHP > 0){
    if(AttackType == "Basic Punch"){
        sprite_index = SPR_PlayerBasicPunch;
        MyAttack = instance_create_layer(x,y, "Instances", OBJ_Attack_BasicPunch);
    }else if(AttackType == "Strong Punch"){
    sprite_index = SPR_PlayerStrongPunch;
    MyAttack = instance_create_layer(x,y,"Instances",OBJ_Attack_StrongPunch);
	
}
}
 
if(MyAttack != 0){
    SpeedMod = 0;
    IsAttacking = true;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Player";
}