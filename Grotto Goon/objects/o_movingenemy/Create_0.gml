/// @description Insert description here
// You can write your code in this editor
/*check_speed = true;
alarm[2] = 260;*/
randomize();
image_xscale = choose(0.63,-0.63);
image_yscale = 0.66;
z = 0;
speedx = 4;
speedy = 4;
speedz = 0;

offset = 0; 

zspeed = 0;

ascending = false;

turning = false;

xvector = 0;

z = 0;
angle = 0;

lowz = 100;
monitorz = 100;

count = 0; 

instance = instance_place(x,y,o_movingenemy);
	
if(instance)
{
	directi = point_direction(x,y,instance.x,instance.y) - 180;
	x += lengthdir_x(sprite_width + 2,directi);
	y += lengthdir_y(sprite_height + 2,directi);
	
	with(instance)
	{
		directi = point_direction(x,y,other.x,other.y) - 180;
		x += lengthdir_x(sprite_width + 2,directi);
		y += lengthdir_y(sprite_height + 2,directi);
	}
}