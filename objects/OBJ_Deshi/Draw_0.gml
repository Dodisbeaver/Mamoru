/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-20,y-8,x+20,y+8,false);
draw_set_font(Font_pixelcontrols)
if(helptext)
draw_text(x,y+40, "Press Z to control!");
 
//Draw my own sprite.
draw_set_alpha(1);
draw_self();
