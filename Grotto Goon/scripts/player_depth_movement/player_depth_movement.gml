 ///Depth and Movement(Any State -- NOT TRUE)
depth = (-y-z);

/*if(current_state !=SlammingState or current_state !=GrabbingState)
{
	if(instance_place(x,y,o_potentialweapon))
	{
		movement_speed = 3.5;
	}
	else
	{
		movement_speed = 4;
	}
}*/
//get keypress
if(current_state != DodgingState)
{
	
	var up = keyboard_check(key_up) || keyboard_check(key_up_alt);
	var down = keyboard_check(key_down) || keyboard_check(key_down_alt);
	var left = keyboard_check(key_left) || keyboard_check(key_left_alt);
	var right = keyboard_check(key_right) || keyboard_check(key_right_alt);

	//compute axes
	var axis_x_dir = right - left;
	var axis_y_dir = down - up;

	//acceleration
	var axis_x_add = axis_x_dir * axis_x_acceleration;
	var axis_y_add = axis_y_dir * axis_y_acceleration;

	//restitution
	var axis_x_sub = min(axis_x_restitution,abs(axis_x)) * sign(axis_x) * (axis_x_dir == 0);
	var axis_y_sub = min(axis_y_restitution,abs(axis_y)) * sign(axis_y) * (axis_y_dir == 0);

	axis_x = clamp(axis_x + axis_x_add - axis_x_sub, -axis_x_max,axis_x_max);
	axis_y = clamp(axis_y + axis_y_add - axis_y_sub, -axis_y_max,axis_y_max);

	//normalize axis_x,axis_y - pythagoras sats vector problem
	if!(axis_x == 0 and axis_y == 0)
	{
		var dist = sqrt(sqr(axis_x) + sqr(axis_y));
		var mdist = min(movement_speed, dist);
		axis_x = ((axis_x/dist) * mdist);
		axis_y = ((axis_y/dist) * mdist);
		x = round(x);
		y = round(y);
		//move
		if(!place_meeting(x+axis_x, y + axis_y, o_solid))
		{
			/*//fix this shit
			if(place_meeting(x+axis_x,y,o_movetest))
			{
				if(o_movetest.xsolid = true)
				{
					axis_x = 0;
				}
			}
		
			if(place_meeting(x,y+axis_y,o_movetest))
			{
				if(o_movetest.ysolid = true)
				{
					axis_y = 0;
				}
				movement_speed = 0;
			}*/
			if(place_meeting(x+1,y,o_movetest))
			{
				if(o_movetest.xsolid = false)
				{
					x+=axis_x;
				}
			
			}
			else
			{
				if(axis_y != 0)
				{
					//x+=(axis_x) * 0.95;
					x+=(axis_x);
				}
				else
				{
					x+=(axis_x);
				}
			}
		
			if(place_meeting(x,y+1,o_movetest))
			{
				if(o_movetest.ysolid = false)
				{
					y+=axis_y;
				}
			
			}
			else
			{
				if(axis_x != 0)
				{
					//y+=(axis_y) * 0.95;
					y+=(axis_y);
				}
				else
				{
					y+=(axis_y);
				}
			
			}
		
		
		}
		else if(place_meeting(x+axis_x, y + axis_y, o_solid))
		{
			for(var i=0;i<abs(axis_x);i++)
			{
				if(place_meeting(x+sign(axis_x),y,o_solid)) then break;
				x+=sign(axis_x);
			}
		
			for(var i=0;i<abs(axis_y);i++)
			{
				if(place_meeting(x,y+sign(axis_y),o_solid)) then break;
				y+=sign(axis_y);
			}
		}
		else if(place_meeting(x+axis_x, y + axis_y, o_movetest))
		{
			//if(o_movetest.xsolid = true)
			{
				for(var i=0;i<abs(axis_x);i++)
				{
					if(place_meeting(x+sign(axis_x),y,o_movetest)) then break;
					x+=sign(axis_x);
				}
			}
			//if(o_movetest.ysolid = true)
			{
				for(var i=0;i<abs(axis_y);i++)
				{
					if(place_meeting(x,y+sign(axis_y),o_movetest)) then break;
					y+=sign(axis_y);
				}
			}
		}
	/*xd[1,0] = 0
	xd[0,1] = 0
	xd[1,1] = 1
	xd[0,0] = 1*/
	
	}

}
/*x = round(x);
y = round(y);