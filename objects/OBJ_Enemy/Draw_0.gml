/// @description Insert description here
// You can write your code in this editor
//Set the opacity to 60% and then draw a dark gray oval for the shadow.
//draw_set_alpha(.6);
//draw_set_color(c_dkgray);
//draw_ellipse(x-40,y-8,x+40,y+8,false);
 
////Draw my own sprite.
//draw_set_alpha(1);
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,y-8,x+40,y+8,false);
 
//Draw my own sprite.
draw_set_alpha(1);
draw_set_font(Font_pixelcontrols);
draw_self();
//draw_text(x,y-30,State);

 
//draw_set_alpha(1);

 
 
//if(CurrentHP > 0){
//	var enemy;
//	enemy = (CurrentHP/ MaxHP) * 100;
//	draw_healthbar(x-(sprite_width/2),y+5,x+(sprite_width/2),y+10,enemy,c_black,c_red,c_red,1,true,true);
//	draw_healthbar(x-(sprite_width/2),y+5,x+(sprite_width/2),y+10,enemy,c_black,c_red,c_red,1,true,true);
   
 
//}