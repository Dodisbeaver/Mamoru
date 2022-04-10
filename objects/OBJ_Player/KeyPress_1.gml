/// @description Insert description here
// You can write your code in this editor
AttackType = "";
if(dead){
return;
}
 
 if(keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left)){
   if(Cooldown <= 6){
   AttackType = "Basic Punch";
	Cooldown = 20- SpeedMod;
	SpeedMod++
	}
}
if(keyboard_check(vk_numpad8) || keyboard_check(ord("I")) || keyboard_check(vk_up)){
	 if (Cooldown <= 0){
    AttackType = "Strong Punch";
	Cooldown = 20;
	 }
}
 
if(OnGround == true ){
    event_user(2);
	
}
 

 
