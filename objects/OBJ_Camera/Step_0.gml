/// @description Insert description here
// You can write your code in this editor

	MyBR = instance_nearest(x+100,y+100,OBJ_Fight_Area);

switch State{
		
		case "Player":
 
   		TargetX = OBJ_Player.x;
		TargetY = OBJ_Player.y;
 
		if(MyBR.IsActive == true ){
		  State = "Region";
		}
		break;
		    case "Region":
			if(object_exists(OBJ_Fight_Area)){
				
			
		    var MinX = OBJ_Fight_Area.LeftEdge + 480;
		var MaxX = OBJ_Fight_Area.RightEdge-480;
 
		var MinY = OBJ_Fight_Area.TopEdge-270;
		var MaxY = OBJ_Fight_Area.BottomEdge+270;   
 
		TargetX = clamp(OBJ_Player.x,MinX,MaxX);
		TargetY = clamp(OBJ_Player.y,MinY,MaxY);
 
		if(MyBR.IsActive == false || distance_to_object(OBJ_Fight_Area) > 0){
		     State = "Player";
		}
			break;
			}
			State = "Player";
				
		break;
}
 
camera_set_view_pos(view_camera[0], TargetX - view_vborder/2, TargetY - view_hborder/2);

 
if(distance_to_point(TargetX,TargetY) < MoveSpeed){
 
    x = TargetX;
    y = TargetY;
    speed = 0;
 
}else{
 
    move_towards_point(TargetX,TargetY,MoveSpeed);
 
}