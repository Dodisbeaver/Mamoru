/// @description Insert description here
// You can write your code in this editor

gui_height = display_get_gui_height();
gui_width = display_get_gui_width();

menu_x = gui_width/2;

menu_y = gui_height - 100;
menu_speed = 25;
menu_font = Font_pixel;
menu_itemheight = font_get_size(Font_pixel);
menu_committed = -1;
menu_control = true;

menu[1] = "Start";
menu[0] = "Quit";

controls[2] = "Move - WASD or Arrows";
controls[1] = "Fight - J and I";
controls[0] = "Control Deshi - Mouse Rightclick";

credits[4] = "8/8 Studios";
credits[3] = "Game Design - David Bjorklund";
credits[2] = "Art Design - Tanwa Srisong ";
credits[1] = "Programming - Tim Tornblom, David Bjorklund ";
credits[0] = "Music - Dj Manjigo ";

credits_items = array_length(credits);
menu_items = array_length(menu);
controls_items = array_length(controls);
menu_cursor = 1;
