/// @find target
// You can write your code in this editor
///FindTarget
 
 if(IsHit == true){
	if(point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.y) > AttackRange || point_distance(TargetX,TargetY,OBJ_Player.x,OBJ_Player.y) < 50 || abs(TargetY-OBJ_Player.y) > LAYER_SIZE || sign(TargetX-OBJ_Player.x) != sign(SideMod)){
		TargetX = random_range(OBJ_Player.x+60*SideMod, OBJ_Player.x+90*SideMod);
		TargetY = random_range(OBJ_Player.y-10, OBJ_Player.y+10);
	}
 }
 else{
	if(point_distance(TargetX,TargetY,OBJ_Deshi.x,OBJ_Deshi.y) > AttackRange || point_distance(TargetX,TargetY,OBJ_Deshi.x,OBJ_Deshi.y) < 50 || abs(TargetY-OBJ_Deshi.y) > LAYER_SIZE || sign(TargetX-OBJ_Deshi.x) != sign(SideMod)){
		TargetX = random_range(OBJ_Deshi.x+60*SideMod, OBJ_Deshi.x+90*SideMod);
		TargetY = random_range(OBJ_Deshi.y-10, OBJ_Deshi.y+10);
	}
 }


