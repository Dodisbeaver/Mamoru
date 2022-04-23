/// @description Insert description here
// You can write your code in this editor
if(active){
sprite_index = SPR_PlatformActive;

}

if(isactivating && !active) {

sprite_index = SPR_PlatformActivating;
isactivating = false;
active = true;
alarm[1] = room_speed * 5;

}

if (!isactivating && isdeactivating) {

	alarm[0] = room_speed * 5;
	sprite_index = SPR_PlatformDeactivating;
	isdeactivating = false;
	timeOut = true;
	alarm[2] = room_speed * 10;
}


