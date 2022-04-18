/// @description Insert description here
// You can write your code in this editor
CurrentHP += 10;
if(CurrentHP > MaxHP){
	CurrentHP -= CurrentHP - MaxHP;
}
with other {
	instance_destroy();
}
