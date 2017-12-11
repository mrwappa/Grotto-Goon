/// @description Insert description here
// You can write your code in this editor
dirlength = 0;
var numberofdirlines = irandom_range(5,10);
for (i=0; i<numberofdirlines; i++)
{	
	var dirlengthadd = irandom_range(7,15);
	dirlength += dirlengthadd;
		
	var newdirline = instance_create(dirline.x + lengthdir_x(dirlength,_dir), dirline.y + lengthdir_y(dirlength,_dir),o_line_effect1);
	with(newdirline)
	{
		dir = other.dirline.dir;
		re_dir = dir - 180;
	}
}
	
_dir = 0;
dirlength = 0;