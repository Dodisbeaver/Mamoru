/// @move towards targets
// You can write your code in this editor
///Move Event
 
if(point_distance(x,y,TargetX,TargetY) >= Speed){
    move_towards_point(TargetX,TargetY,Speed);
}else{
    speed = 0;
}