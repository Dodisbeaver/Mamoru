// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Attack(){
controller = 0;

attack_light = keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord("J")) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("Q"));
attack_strong = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("I")) || keyboard_check_pressed(vk_up);

if (attack_light || attack_strong) {
	controller =  0;
}


	ButtonCombo = "";


AttackType = "";
if(dead){
return;
}
 
 if(attack_light || gamepad_button_check_pressed(0,gp_face1)  ){
   //if(Cooldown <= 6){
	   ButtonCombo += "+bAtk";
   //AttackType = "Basic Punch";
	//Cooldown = 20- SpeedMod;
	//SpeedMod++
	//}
}
if(attack_strong || gamepad_button_check_pressed(0,gp_face2)){

	//if (Cooldown <= 6){
		 ButtonCombo += "+sAtk";
    //AttackType = "Strong Punch";
	//Cooldown = 20;
	 //}
}

if (ButtonCombo != "")
ds_list_add(CommandList, string_delete(ButtonCombo,1,1));

show_debug_message(string(ds_list_find_index(CommandList, "bAtk")))

while(ds_list_size(CommandList) > 7){
    ds_list_delete(CommandList, 0);
}

if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "bAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-2) == "bAtk" && ds_list_find_value(CommandList,ds_list_size(CommandList)-3) == "bAtk") {
	AttackType = "Kick";
} else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "bAtk"){
    AttackType = "Basic Punch";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "sAtk"){
    AttackType = "Strong Punch";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "bAtk+sAtk"){
    AttackType = "UpperCut";
}


if(OnGround == true ){
    event_user(2);
	
}
 

 
}