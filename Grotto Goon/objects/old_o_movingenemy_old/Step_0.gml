 /// @description Insert description here
// You can write your code in this editor

depth =-y;
target = o_player;

crab_collision();

crab_jump_animation();

 

//old collision script

if(instance_exists(target))
{
	//line = collision_line(x,y,target.x,target.y,o_movingenemy,true,false);
	x_speed = x - xprevious;
	y_speed = y - yprevious;
	targetdist = distance_to_object(target);
	xtargetdist = (x - target.x);
	ytargetdist = (y - target.y);
	
	dir = point_direction(x,y,target.x,target.y);
	
	xvector = lengthdir_x(speedx,dir);
	yvector = lengthdir_y(speedy,dir);
	
	instancex = place_meeting(x+xvector,y,o_movingenemy);
	instancey = place_meeting(x,y+yvector,o_movingenemy);
	
	/*instance = instance_place(x,y,o_movingenemy);
	
	if(instance)
	{
		
	}*/
	
	/*if(check_speed)
	{
		if(x_speed == 0 and y_speed == 0)
		{
			if(instance_exists(o_movingenemy))
			{
				var random_n = irandom(11000)
				x += random_n;
				nearest = instance_nearest(x-100000, y, o_movingenemy);
				x -= random_n;
			
				var _direct = point_direction(x,y,nearest.x, nearest.y) - 180;
				x += lengthdir_x(1,_direct);
				y += lengthdir_y(1,_direct);
			
			}
		}
	}*/
	
	
	if(abs(target.x - x) > 23 or target.x - x < -23)
	{
		if(!instancex)
		{
			/*if(line)
			{
				
				x += lengthdir_x(speedx/global.SM,dir);
			}
			else
			{
				
			}*/
			x += lengthdir_x(speedx/global.SM,dir);
			
		}
		else
		{
			
			
			
			
			/*direct = point_direction(x,y,instancex.x,instancex.y) - 180;
			x += lengthdir_x(2,direct);
			y += lengthdir_y(2,direct);
			with(instancex)
			{
				direct = other.direct;
				if(other.direct = direct)
				{
					direct -=20;
				}
					x += lengthdir_x(0.5,direct);
					y += lengthdir_y(0.5,direct);
			}*/
				
			
			
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
		if(!instancey)
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
	
}