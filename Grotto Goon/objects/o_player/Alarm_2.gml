/// @description Insert description here
// You can write your code in this editor
var shadow = instance_create(x,y,o_player_shadowdash);
with(shadow)
{
	image_angle = other.angle_image;
	image_xscale = other.image_xscale;
	image_yscale  = other.image_yscale;
	
}