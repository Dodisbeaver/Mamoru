/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font_pixel);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

for(var  i = 0; i < menu_items; i++){

	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}else {
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);

}

draw_set_font(Font_pixelcontrols);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for(var  i = 0; i < controls_items; i++){
	
	var offset = 2;
	var txt = controls[i];
	var cool = c_yellow;
	var xx = menu_x * 1.5;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

}

for(var  i = 0; i < credits_items; i++){
	
	var offset = 2;
	var txt = credits[i];
	var cool = c_yellow;
	var xx = menu_x - menu_x + 50;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);

}

