/// @description Insert description here
// You can write your code in this editor
//Set the opacity to 60% and then draw a dark gray oval for the shadow.
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-40,y-8,x+40,y+8,false);
 
//Draw my own sprite.
draw_set_alpha(1);
draw_self();

 
draw_set_alpha(1);

 
 
if(CurrentHP > 0){
	
	draw_set_color(c_maroon);
	draw_rectangle(x-(sprite_width/2),y+5,x+(sprite_width/2)*(CurrentHP/MaxHP),y+10,false);
   
 
}