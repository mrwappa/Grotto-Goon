image_xscale = 2 + (1 * z/130) + AdditionalScale;
image_yscale = image_xscale;

if(Blinking == true)
{
	if(instance_exists(o_potentialweapon))
	{
		with(instance_nearest(x,y-z,o_potentialweapon))
		{
			Blinking = false;
		}
	}
    Color = MergeColor;
}
else
{
    Color = ColorType;
}

if(_speed > 0)
{
	x+=lengthdir_x(_speed/global.SM,dir);
	y+=lengthdir_y(_speed/global.SM,dir);
}


if(a_speed > 0)
{
	x+=lengthdir_x(a_speed/global.SM,a_dir);
	y+=lengthdir_y(a_speed/global.SM,a_dir);
}
a_speed = lerp(a_speed,0,0.1/global.SM/global.SM);


if(s_speed > 0)
{

	_x += lengthdir_x(s_speed/global.SM,dir);
	_y += lengthdir_y(s_speed/global.SM,dir);
	x=o_player.x +_x;
	y=o_player.y +_y;
}


