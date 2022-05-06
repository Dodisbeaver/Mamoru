/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font_Gameover);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

if(global.gameover) {
	

	var offset = 2;
	var txt = menu[0];
	var xx = menu_x;
	var yy = menu_y;
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	draw_set_font(Font_pixel);
	var txt = menu[1]  + string(global.score);
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (4 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
		draw_set_font(Font_pixel);
	var txt = menu[2];
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (6 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
			draw_set_font(Font_pixel);
	var txt = string(counter);
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (8 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	
}

draw_set_font(Font_Gameover);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

if(global.gameWin) {
	

	var offset = 2;
	var txt = "Congratulations!";
	var xx = menu_x;
	var yy = menu_y;
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	draw_set_font(Font_pixel);
	var txt = menu[1]  + string(global.score);
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (4 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
		draw_set_font(Font_pixel);
	var txt = menu[2];
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (6 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
			draw_set_font(Font_pixel);
	var txt = string(counter);
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (8 * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	draw_set_color(c_white);
	draw_text(xx,yy,txt);
	
	
}
