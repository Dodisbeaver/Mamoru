/// @description Insert description here
// You can write your code in this editor
if(object_exists(OBJ_Enemy) && global.gamestart){
currEnemyNo = instance_number(OBJ_Enemy);
//show_debug_message(currEnemyNo);
for (var i = 0; i < currEnemyNo; ++i;)
{
	var en =  instance_find(OBJ_Enemy,i);
	//show_debug_message(en.CurrentHP);
	with (en ){
	if(point_distance(OBJ_Player.x,OBJ_Player.y, x,y) < 150)
	ds_list_add(global.enemyList, id);
	}
	if(point_distance(OBJ_Player.x,OBJ_Player.y, x,y) < 150){
	var helth = (en.CurrentHP/ en.MaxHP);
	var height = gui_height - gui_height +30 ;
	var width = (gui_width-300 ) -50;
	//height += i *1.5;
	//show_debug_message(height)
	//draw_healthbar(gui_width-130,gui_height-gui_height+30,gui_width -30,gui_height-gui_height+40,helth,c_black,c_red,c_red,1,true,true);

	}
	
}

	for(var i = 0; i < ds_list_size(global.enemyList); i++){
		
			//show_debug_message(ds_list_size(global.enemyList));
			//show_debug_message(	ds_list_find_value(global.enemyList, i)								);
			var enmy = ds_list_find_value(global.enemyList, i);
			//show_debug_message(enmy.CurrentHP);
			
			if(instance_exists(enmy)) {
				enmy = ds_list_find_value(global.enemyList, i);
				//show_debug_message(enmy.CurrentHP);
				if(enmy.CurrentHP > 0){
					var bar_x = 960 - 30;
					var bar_y = 40 + i * 25;
				 draw_sprite(SPR_EnemyHead, 0, bar_x - 25, bar_y);
				 draw_sprite_stretched(SPR_EnemyHealth, 0, bar_x, bar_y, (enmy.CurrentHP/enmy.MaxHP) * 100, 20);	
				//draw_healthbar(gui_width,gui_height-gui_height+30,gui_width -100,gui_height+130,helth,c_black,c_red,c_red,1,true,true);
				//draw_healthbar(enmy.x-(enmy.sprite_width/2),enmy.y+5,enmy.x+(enmy.sprite_width/2),enmy.y+10,helth,c_black,c_red,c_red,1,true,true);
   
 
				}
			}
	}

}



if(instance_exists(OBJ_Player)){
	

   	var bar_x = 50;
	var bar_y = 40 ;
	draw_sprite(SPR_PlayerHead, 0, bar_x - 25, bar_y);
	draw_sprite_stretched(SPR_PlayerHealth, 0, bar_x, bar_y, (OBJ_Player.CurrentHP/OBJ_Player.MaxHP) * 100, 20);
 
}


if(instance_exists(OBJ_Deshi)){
	

   	var bar_x = (960/2) - 50;
	var bar_y = 40 ;
	draw_sprite(SPR_DeshiHead, 0, bar_x - 25, bar_y);
	draw_sprite_stretched(SPR_DeshiHealth, 0, bar_x, bar_y, (OBJ_Deshi.CurrentHP/OBJ_Deshi.MaxHP) * 100, 20);
 
}

if(global.gamestart){

	draw_set_font(Font_pixelcontrols);
	var offset = 2;
	var txt = Score[1]  + string(global.score);
	var xx = gui_x;
	var yy = 50;
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

}

if(instance_exists(OBJ_Boss)){

	
				var boss = OBJ_Boss;
				//show_debug_message(enmy.CurrentHP);
				if(boss.CurrentHP > 0 && point_distance(OBJ_Player.x,OBJ_Player.y,boss.x,boss.y) < 150){
					var bar_x = 960/2;
					var bar_y = 100;
				 draw_sprite(SPR_BossHead, 0, bar_x - 25, bar_y);
				 draw_sprite_stretched(SPR_BossHealth, 0, bar_x, bar_y, (boss.CurrentHP/boss.MaxHP) * 200, 30);	
				//draw_healthbar(gui_width,gui_height-gui_height+30,gui_width -100,gui_height+130,helth,c_black,c_red,c_red,1,true,true);
				//draw_healthbar(enmy.x-(enmy.sprite_width/2),enmy.y+5,enmy.x+(enmy.sprite_width/2),enmy.y+10,helth,c_black,c_red,c_red,1,true,true);
   
 
				}
			
}

if(global.gotonext){

	//draw_sprite(SPR_Arrow,0,969/2,(1280/2)-40);
	

}
ds_list_clear(global.enemyList);
