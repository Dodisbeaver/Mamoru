/// @description Insert description here
// You can write your code in this editor
move_towards_point(dest,y, 5);

if(x >= dest) {
image_xscale = sign(dest);
dest = room_width - room_width -100;
roomend = true;
}

if(x <= dest && roomend){

image_xscale = roomend;
dest = room_width + 100;
roomend = false;
}
