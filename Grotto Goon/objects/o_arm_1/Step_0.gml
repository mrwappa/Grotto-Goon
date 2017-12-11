/// @description Insert description here
// You can write your code in this editor

///State Normal(every single state depends on the player)
if(o_player.current_state != state.Dodging)
{
	if (o_player.current_state = state.Normal)
	{
	    speed = 0;
	    if (instance_exists(o_player))
	    {
	        image_angle = o_player.angle_image;
	        hspeed -= (o_player.axis_x*0.35);
	        vspeed -= (o_player.axis_y*0.45);
	        depth=-y;
	        x = floor(o_player.x + (20));
	        y = floor(o_player.y + 3 + (image_angle/1.5));
	    }
	}

	///State Grabbing
	if (o_player.current_state = state.Grabbing)
	{
	    speed = 0;
	    if(instance_exists(o_player.GrabbableObject))
	    {
	        if (instance_exists(o_player) and instance_exists(o_player.GrabbableObject))
	        {
	            //amature way to say: "BE IN FRONT OF BALL FOR FUCK SAKE"
	            image_angle = o_player.angle_image;
	            depth = o_player.GrabbableObject.depth -1;
	            x = floor(o_player.x + (10));
	            y = floor(o_player.y - 27+ abs(image_angle*1.5));
	            hspeed -= (o_player.axis_x*1.3);
	            vspeed -= (o_player.axis_y*1.3);
	        }
	    }
	}

	///State Slamming
	if (o_player.current_state = state.Slamming)
	{
	    if (instance_exists(o_player) and instance_exists(o_player.GrabbableObject))
	    {
	        x = o_player.GrabbableObject.x -7
	        y = o_player.GrabbableObject.y - o_player.GrabbableObject.z +5 +  + o_player.GrabbableObject.AdditionalScale * 5
	        hspeed = o_player.GrabbableObject.hspeed;
	        vspeed = o_player.GrabbableObject.vspeed;
	        if o_player.GrabbableObject.dir > 45 and o_player.GrabbableObject.dir < 135
	        {
	            depth = o_player.GrabbableObject.depth -1
	        }
	        else if o_player.GrabbableObject.dir > 135 and o_player.GrabbableObject.dir < 225
	        {
	            depth = o_player.GrabbableObject.depth -1
	        }
	        else if o_player.GrabbableObject.dir > 225 and o_player.GrabbableObject.dir < 335
	        {
	            depth = o_player.GrabbableObject.depth +1
	        }
	        else if o_player.GrabbableObject.dir > 335 and o_player.GrabbableObject.dir < 45 and o_player.GrabbableObject.dir < 360
	        {
	            depth = o_player.GrabbableObject.depth +1
	        }
	    }
	    hspeed = 0;
	    vspeed = 0;
	}

	///State Throwing
	if (o_player.current_state = state.Throwing)
	{
	     x = round(o_player.x + (20));
	     y = round(o_player.y);
	}

	///State Wielding
	if (o_player.current_state = state.Wielding)
	{
	    hspeed = 0;
	    vspeed = 0;
	    if instance_exists(o_player.WieldingObject)
	    {
	        Angle = o_player.WieldingObject.Angle;
			if(o_player.WieldingObject.current_state == o_player.WieldingObject.SwungState)
			{
				image_angle = o_player.WieldingObject.image_angle;
			}
		
	    }
	    else
	    {
	        Angle =-120;
			image_angle = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + Angle;
	    }
	    xoffset = lengthdir_x(13, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
	    yoffset = lengthdir_y(8, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    
	    x = o_player.x + xoffset;
	    y = o_player.y + yoffset;

	    z = (o_player.sprite_height/2);

    
    
	    if (Angle = -100)
	    {
	        if (image_angle >= 10 and image_angle <=170)
	        {
	            depth = o_player.depth +1;
	            with(o_player)
	            {
	                image_xscale = 0.8;
	            }
	        }
	        else
	        {
	            depth = o_player.depth -1;
	            with(o_player)
	            {
	                image_xscale = -0.8;
	            }
	        }
	    }
	    else if(Angle = 100)
	    {
	        if (image_angle <= 480 and image_angle >=360)
	        {
	            depth = o_player.depth +1;
	            with(o_player)
	            {
	                image_xscale = 0.8;
	            }
	        }
	        else if(image_angle <= 180 and image_angle >= 100)
	        {
	            depth = o_player.depth +1;
	            with(o_player)
	            {
	                image_xscale = 0.8;
	            }
	        }
	        else
	        {
	            depth = o_player.depth -1;
	            with(o_player)
	            {
	                image_xscale = -0.8;
	            }
	        }
	    }
	    //x = o_player.WieldingObject.x - (o_player.WieldingObject.sprite_width /2);
	    //y = o_player.WieldingObject.y - o_player.WieldingObject.z;
    
	    /*var xoffset = lengthdir_x(36, point_direction(o_player.x, o_player.y, mouse_x,mouse_y))
	    var yoffset = lengthdir_y(36, point_direction(o_player.x, o_player.y, mouse_x,mouse_y))
    
	    x = o_player.WieldingObject.x + xoffset;
	    y = o_player.WieldingObject.y + yoffset + (o_player.sprite_height/2) - o_player.WieldingObject.z;

	    image_angle = point_direction(o_player.x,o_player.y,mouse_x,mouse_y);*/
	}
}
else
{
	speed = 0;
	hspeed = 0;
	vspeed = 0;
}


