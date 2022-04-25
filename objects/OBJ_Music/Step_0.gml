/// @description Insert description here
// You can write your code in this editor

switch global.musicTracker {

	case 1:
			
			break;
	default:
		if(audio_sound_get_track_position(global.music) > 38.40){
			audio_sound_set_track_position(global.music, 0);
			
		}
		break;
	
	
}

