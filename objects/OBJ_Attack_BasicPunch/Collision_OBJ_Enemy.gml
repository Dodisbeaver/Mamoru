/// @description Insert description here
// You can write your code in this editor
if(image_index == DMGFrame && abs(depth - other.depth) <= LAYER_SIZE && abs(y - other.y) <= LAYER_SIZE && Owner == "Player"){
     
    other.CurrentHP -= Damage;
	other.x += sign(OBJ_Player.image_xscale)*40;
    other.State = "IsHit";
    other.alarm[0] = StunLength;
    audio_play_sound(HitSound,10,false);
 
	Hit = true;
}