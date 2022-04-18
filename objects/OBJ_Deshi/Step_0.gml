/// @description Insert description here
// You can write your code in this editor

//if(mouse_check_button_pressed(mb_right)){
	MouseFormerX = mouse_x;
	MouseFormerY = mouse_y;
	move_towards_point(MouseFormerX,MouseFormerY,Speed);	


//}
if(point_distance(x,y,MouseFormerX,MouseFormerY)) < 2{
		speed = 0;	
	}
	
if(CurrentHP <= 0){
instance_destroy();
}
