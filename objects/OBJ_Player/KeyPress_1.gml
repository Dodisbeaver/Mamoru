/// @description Insert description here
// You can write your code in this editor
ButtonCombo = "";


AttackType = "";
if(dead){
return;
}
 
 if(keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left) || keyboard_check(ord("Q"))){
   //if(Cooldown <= 6){
	   ButtonCombo += "+bAtk";
   //AttackType = "Basic Punch";
	//Cooldown = 20- SpeedMod;
	//SpeedMod++
	//}
}
if(keyboard_check(ord("E")) || keyboard_check(vk_numpad8) || keyboard_check(ord("I")) || keyboard_check(vk_up)){

	//if (Cooldown <= 6){
		 ButtonCombo += "+sAtk";
    //AttackType = "Strong Punch";
	//Cooldown = 20;
	 //}
}
// ButtonCombo = string_delete(ButtonCombo,1,1);
 
//if(ButtonCombo == "bAtk"){
 
//    AttackType = "Basic Punch";
 
//}else if(ButtonCombo == "sAtk"){
 
//    AttackType = "Strong Punch";
 
//}else if(ButtonCombo == "bAtk+sAtk"){
 
//    AttackType = "UpperCut";
 
//}

ds_list_add(CommandList, string_delete(ButtonCombo,1,1));
 alarm[7] = 20;
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
 

 
