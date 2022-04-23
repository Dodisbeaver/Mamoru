/// @description Insert description here
// You can write your code in this editor
if(active){
sprite_index = SPR_PlatformActive;
}

if(isactivating && !active) {

sprite_index = SPR_PlatformActivating;
active = true;
alarm[1] = room_speed * 5;

}

if (!isactivating && isdeactivating) {

	alarm[0] = room_speed * 7;
	sprite_index = SPR_PlatformDeactivating;
	isdeactivating = false;
}


