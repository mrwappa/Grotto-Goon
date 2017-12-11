/// @description Insert description here
// You can write your code in this editor
image_speed = 0.16*sprite_get_number(sprite_index)/global.SM;
depth =-10000;
/*if(image_index == 2)
{
	instance_destroy();
}*/

alpha-=0.03/global.SM;
ShakeScreen(5);
if(sprite_index == s_explostion_3)
{
	if(image_index > 60)
	{
		instance_destroy();
	}
}
else
{
	if (image_index > sprite_get_number(sprite_index) - 1)
	{
		instance_destroy();
	}
}

