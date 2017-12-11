/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape))
{
    game_end();
}

if(keyboard_check_pressed(ord("R")))
{
	game_restart();
}
/*SpawnBalls = 1;
if(keyboard_check(ord("Q")))
{
	repeat(SpawnBalls)
	{
		instance_create(mouse_x,mouse_y,o_ball);
	}
	Balls+= SpawnBalls;
}*/

if(keyboard_check_pressed(vk_enter))
{
	event_user(TOGGLE_PAUSE);
}
if(!paused_)
{
	cursor_sprite = s_cursor;
	if(keyboard_check(ord("V")))
	{
		global.SM = lerp(global.SM,3,0.2);
	}
	else
	{
		global.SM = lerp(global.SM,1,0.4);
	}

	if(keyboard_check_pressed(ord("M")))
	{
		with(o_player)
		{
		    if(instance_exists(WieldingObject))
			{
				with(WieldingObject)
				{
					current_state = NormalState;
				}
			}
			else if(instance_exists(GrabbableObject))
			{
				with(GrabbableObject)
				{
					current_state = NormalState;
				}
			}
			stick = instance_create(x-view_w*2, y-view_h*2, o_stick);
			WieldingObject = stick;
			alarm[1] = 1;
		}
	}

	if(keyboard_check_pressed(ord("N")))
	{
		var numberoflines = irandom_range(20,25);
		line = instance_create(mouse_x,mouse_y, o_line_effect);
	
		for (i=0; i<numberoflines; i++)
		{	
			var lengthadd = 10;
			length += lengthadd;
		
			var newline = instance_create(line.x,line.y + length,o_line_effect);
		
		}
		length = 0;
		if(alarm[0] == -1)
		{
			alarm[0] = 20;
		}
	}

	if(keyboard_check_pressed(ord("B")))
	{

	var defaultdir = random(360);

	repeat(12)
	{
		defaultdir += irandom_range(10,60);
	
		var numberofdirlines = irandom_range(7,14);
		dirline = instance_create(mouse_x,mouse_y,o_line_effect1);
		with(dirline)
		{
			dir += defaultdir;
			re_dir = dir - 180;
		}
		_dir = dirline.dir;
	
		dirlength = 0;
	
		repeat(numberofdirlines)	
		{
			var dirlengthadd = irandom_range(1,2);
			dirlength += dirlengthadd;
		
			var newdirline = instance_create(dirline.x + lengthdir_x(dirlength,_dir + defaultdir),
			dirline.y + lengthdir_y(dirlength,_dir + defaultdir),o_line_effect1);
			with(newdirline)
			{
				dir = other.dirline.dir + defaultdir;
				re_dir = dir - 180;
			}
		}
		/*if(alarm[1] == -1)
		{
			alarm[1] = 7;
		}*/
		_dir = 0;
		dirlength = 0;
	}
	}

	if(keyboard_check_pressed(ord("C")))
	{
		var defaultdir = random(360);
		dirline = instance_create(mouse_x,mouse_y,o_line_effect1);
		with(dirline)
		{
			dir = defaultdir;
			re_dir = dir - 180;
		}
		var _dirlength = 0;
	
	
		repeat(irandom_range(9,12))
		{
			_dirlength += irandom_range(1,4);
		
			var _newline = instance_create(dirline.x + lengthdir_x(_dirlength,defaultdir),
			dirline.y + lengthdir_y(_dirlength,defaultdir),o_line_effect1)
		
		
			with(_newline)
			{
				dir = defaultdir;
				re_dir = dir-180;
			}
		}
	
	}
}
else
{
	cursor_sprite = noone;
}



