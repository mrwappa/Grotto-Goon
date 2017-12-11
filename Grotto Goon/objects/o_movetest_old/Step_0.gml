/// @description Insert description here
// You can write your code in this editor


depth = -y;
//do if statement with these variables that are set to true depending on collision
//where the if statement will check distances on x and y
var px,py,mx,my;



if(instance_place(x,y,o_mouse))
{
	if(mouse_check_button(mb_left))
	{
		color = c_red;
		var xdifference = abs(mouse_x - x);
		var ydifference = abs(mouse_y - y);
		
		x = mouse_x;
		y = mouse_y;

	}	
	else
	{
		color = c_black
	}
	
}
else
{
	color = c_black
}

if(distance_to_object(o_player) < 20)
{										
	//instead of table flipping, this could be a kick feature when you're not wielding anything
	
	if(o_player.x < x + (sprite_width/1.5) and o_player.x > x -(sprite_width/1.5))
	{
		if(o_player.y > y + (sprite_height/2))
		{
			bottomline = true;
		}
		else
		{
			bottomline = false;
		}
	}
	else
	{
		bottomline = false;
	}
	
}
else
{
	bottomline = false;
}

if(distance_to_object(o_player) < 20)
{
	if(o_player.x < x + (sprite_width/1.5) and o_player.x > x -(sprite_width/1.5))
	{

		if(o_player.y < y - (sprite_height/2))
		{
			topline = true;
		}
		else
		{
			topline = false;
		}
	}
	else
	{
		topline = false;
	}	
}
else
{
	topline = false;
}

if(distance_to_object(o_player) < 20)
{
	if(o_player.y < y + (sprite_width/2) and o_player.y > y - (sprite_width/2))
	{
		if(o_player.x > x + (sprite_height/1))
		{
			rightline = true;
		}
		else
		{
			rightline = false;
		}
	}
	else
	{
		rightline = false;
	}
	
}
else
{
	rightline = false;
}


if(distance_to_object(o_player) < 20)
{

	if(o_player.y < y + (sprite_width/1.5) and o_player.y > y - (sprite_width/1.5))
	{
		if(o_player.x < x - (sprite_height/1))
		{
			leftline = true;
		}
		else
		{
			leftline = false;
		}
	}
	else
	{
		leftline = false;
	}
}
else
{
	leftline = false;
}

//top
if(place_meeting(x,y + o_player.axis_y,o_player))
{
	
	py = true;
	if(o_player.axis_y < 0 and o_player.y > y + (sprite_height/4) and py = true)
	{	
		px = false;
		mx = false;
		yspeed = o_player.axis_y;
		
		if(xspeed > 0 and o_player.x > x)
		{
			xspeed = 0;
		}
		else if( xspeed < 0 and o_player.x < x)
		{
			xspeed =0;
		}
		if(o_player.axis_x != 0 and o_player.axis_y != 0)
		{
			yspeed *= 1.04;
		}
	}
	
}
else
{	
	
	yspeed = 0;
	//xspeed = 0;
}
//bottom
if(place_meeting(x,y + o_player.axis_y,o_player))
{	
	
	my = true;
	if(o_player.axis_y > 0 and o_player.y < y - (sprite_height/4) and my = true)
	{	
		px = false;
		mx = false;
		yspeed = o_player.axis_y;
		if(xspeed > 0 and o_player.x > x)
		{
			xspeed = 0;
		}
		else if( xspeed < 0 and o_player.x < x)
		{
			xspeed =0;
		}
		if(o_player.axis_x != 0 and o_player.axis_y != 0)
		{
			yspeed *= 1.04;
		}
	}
	
}
else
{
	
	yspeed = 0;
	//xspeed = 0;
}

//right
if(place_meeting(x + o_player.axis_x,y,o_player))
{
	px = true;
	if(o_player.axis_x < 0 and o_player.x > x + (sprite_height/4) and px = true)
	{	
		my = false;
		py = false;
		xspeed = o_player.axis_x;
		if(yspeed > 0 and o_player.y > y)
		{
			yspeed = 0;
		}
		else if( yspeed < 0 and o_player.y < y)
		{
			yspeed =0;
		}
		if(o_player.axis_x != 0 and o_player.axis_y != 0)
		{
			xspeed *= 1.04;
		}
	}
	
}
else
{
	xspeed = 0;
	//yspeed = 0;
}
//left
if(place_meeting(x + o_player.axis_x,y,o_player) )
{
	mx = true;
	if(o_player.axis_x > 0 and o_player.x < x - (sprite_height/4) and mx = true)
	{	
		my = false;
		py = false;
		xspeed = o_player.axis_x;
		if(yspeed > 0 and o_player.y > y)
		{
			yspeed = 0;
		}
		else if( yspeed < 0 and o_player.y < y)
		{
			yspeed =0;
		}
		if(o_player.axis_x != 0 and o_player.axis_y != 0)
		{
			xspeed *= 1.04;
		}
	}
	
}
else
{
	xspeed = 0;
	//yspeed = 0;
}





if(place_meeting(x + xspeed,y - 13,o_solid))
{
	xspeed = 0;
	xsolid = true;
}
else
{
	xsolid = false;
}

if(place_meeting(x,y + yspeed - 13,o_solid))
{
	yspeed = 0;
	ysolid = true;
}
else
{
	ysolid = false;
}

if(xspeed != 0 and yspeed !=0)
{
	
	if(o_player.y < sprite_height/2)
	{
		xspeed = 0;
		
	}
	else
	{
		xspeed = 0;
		
	}
}



x+=xspeed;
y+=yspeed;
