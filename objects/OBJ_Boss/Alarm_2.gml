/// @description Insert description here
// You can write your code in this editor
MyAttack = instance_create_layer(x,y,"Instances", OBJ_Attack_Enemy);
   MyAttack.depth = depth;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
	MyAttack.Damage = 40*random(1);
    MyAttack.Owner = "Enemy";
	if(global.gameover)
		MyAttack.Damage = 1000;
	
