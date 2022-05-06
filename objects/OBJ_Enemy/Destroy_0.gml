/// @description Insert description here
// You can write your code in this editor
var MyPosition = ds_list_find_index(OBJ_Player.EnemyList, id);
 
if(MyPosition != noone){
    ds_list_delete(OBJ_Player.EnemyList, MyPosition);
}
