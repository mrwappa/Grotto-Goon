
if(instance_exists(target))
{
	if(alarm[0] == -1)
	{
		alarm[0] = 180;	
	}
	x_speed = x - xprevious;
	y_speed = y - yprevious;
	targetdist = distance_to_object(target);
	xtargetdist = (x - target.x);
	ytargetdist = (y - target.y);
	
	dir = point_direction(x,y,target.x,target.y);
	 
	xvector = lengthdir_x(speedx,dir);
	yvector = lengthdir_y(speedy,dir);
	
	instancex = place_meeting(x+xvector*2,y,o_movingenemy);
	instancey = place_meeting(x,y+yvector*2,o_movingenemy);
	
	instancex_solid = place_meeting(x+xvector*2,y,o_solid);
	instancey_solid = place_meeting(x,y+yvector*2,o_solid);
	
	//line = collision_line(x,y,target.x,target.y,o_movingenemy,true,true);
	
	if(abs(target.x - x) > 23 or target.x - x < -23)
	{
		
		if(!instancex or !instancex_solid)
		{
			x += lengthdir_x(speedx/global.SM,dir);
		}
		else
		{
			
			if(other.xtargetdist < xtargetdist)
			{
				x += lengthdir_x(speedx/global.SM+1,dir);
			}
			else if(other.xtargetdist > xtargetdist)
			{
				if(other.x > x)
				{
					x-=1 ;
				}
				else if(other.x < x)
				{
					x+=1;
				}
				var _dir = point_direction(x,y,instancex.x,instancex.y) - 180;
				
				x += lengthdir_x(2/global.SM,_dir);
			}
		}
	}
	else
	{
		
	}
	
	if(abs(target.y - y) > 30 or target.y - y < -30)
	{
		if(!instancey or !instancey_solid)
		{
			y += lengthdir_y(speedy /global.SM,dir);
		}
		else
		{
			
			if(other.ytargetdist < ytargetdist)
			{
				y += lengthdir_y(speedy/global.SM+1,dir);
			}
			else if(other.ytargetdist > ytargetdist)
			{
				if(other.y > y)
				{
					y-=1;
				}
				else if(other.y < y)
				{
					y+=1;
				}
				var _dir = point_direction(x,y,instancey.x,instancey.y) - 180;
				
				y += lengthdir_y(2/global.SM,_dir);
			}
		}
	}
	else
	{
		
	}
	
	var xx = x;
	x -= 10000;
	var inst = instance_place(xx,y,o_movingenemy);
	if(inst != id and instance_exists(inst))
	{
		if(abs(inst.x - xx) < sprite_width*1.5)
		{
			var _dir_ = point_direction(x,y,inst.x,inst.y)-180;
			x += lengthdir_x(1/global.SM,_dir_);
		}
		if(abs(inst.y - y) < sprite_height*1.5)
		{
			var _dir_ = point_direction(x,y,inst.x,inst.y)-180;
			y += lengthdir_y(1/global.SM,_dir_);
		}
	}
	x += 10000;
	
	
	
}  