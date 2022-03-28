/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(x-448,y-258,x-448+264,y-258+42,false);
 
draw_set_color(c_maroon);
draw_rectangle(x-450,y-260,x-450+262,y-260+40,false);
 
if(OBJ_Player.CurrentHP > 0){
 
    draw_rectangle_colour(x-450,y-260,x-450+262*(OBJ_Player.CurrentHP/OBJ_Player.MaxHP),y-260+40,c_green,c_lime,c_lime,c_green,false);
 
}