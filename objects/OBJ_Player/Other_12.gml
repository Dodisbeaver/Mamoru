/// @description Insert description here
// You can write your code in this editor
var MyAttack = 0;
 
if(IsHit == false && CurrentHP > 0 && !IsAttacking){
    if(AttackType == "Basic Punch"){
        sprite_index = SPR_PlayerBasicPunch;
        MyAttack = instance_create_layer(x,y, "Instances", OBJ_Attack_BasicPunch);
		MyAttack.Owner = "Player";
		
    }else if(AttackType == "Strong Punch"){
    sprite_index = SPR_PlayerStrongPunch;
    MyAttack = instance_create_layer(x,y,"Instances",OBJ_Attack_StrongPunch);
	MyAttack.Owner = "Player";
	MyAttack.force = 50;
	}else if(AttackType == "UpperCut") {
		sprite_index = SPR_PlayerUpperCut;
		MyAttack = instance_create_layer(x,y,"Instances",OBJ_Attack_UpperCut);
		MyAttack.force = 10;
		MyAttack.Owner = "Player";
	} else if(AttackType == "Kick") {
		sprite_index = SPR_PlayerKick;
		MyAttack = instance_create_layer(x,y,"Instances",OBJ_Attack_StrongPunch);
		MyAttack.force = 100;
		MyAttack.Owner = "Player";
	}
}
 
if(MyAttack != 0){
    SpeedMod = 0;
    IsAttacking = true;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Player";
}