/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font_pixel);
draw_set_color(c_white);


if(instance_exists(OBJ_Deshi) && CurrentHP > 0){
	var Deshi;
	Deshi = (CurrentHP/ MaxHP) * 100;
	draw_healthbar(camera_get_view_border_x(view_camera[0]),camera_get_view_border_y(view_camera[0])-258,camera_get_view_border_x(view_camera[0])+300,camera_get_view_border_y(view_camera[0])-258+42,Deshi,c_black,c_lime,c_lime,0,true,true);
	draw_text(camera_get_view_border_x(view_camera[0])+110,camera_get_view_border_y(view_camera[0])-258+40,"Deshi");
   
 
}
