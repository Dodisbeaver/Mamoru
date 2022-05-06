/// @description Insert description here
// You can write your code in this editor
gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

gui_x = gui_width/2;

gui_y = gui_height - 100;
gui_speed = 25;
gui_font = Font_pixelcontrols;
gui_itemheight = font_get_size(Font_pixelcontrols);

enemy = ds_list_create();

Score[1] = "Score: ";
score_itemheight = font_get_size(Font_pixel);

