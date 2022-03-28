/// @description Insert description here
// You can write your code in this editor
if(image_index == DMGFrame && abs(depth - other.depth) <= LAYER_SIZE && abs(y - other.y) <= LAYER_SIZE && Owner == "Enemy"){
     
    other.CurrentHP -= Damage;
    other.IsHit = true;
    other.alarm[3] = StunLength;
     
	audio_play_sound(HitSound,10,false);
 
	Hit = true;
}