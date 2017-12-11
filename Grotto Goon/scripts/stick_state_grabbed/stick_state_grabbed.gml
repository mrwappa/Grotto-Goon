///State Grabbed
if (current_state == stickstate.Grabbed)
{
	
	//this is for draw event cause of i want to display the shadow closer to player when its grabbed
	if(instance_exists(o_player))
	{
		cdir = point_direction(x,y,o_player.x,o_player.y);
		xoff = lengthdir_x(4,cdir);
		yoff = lengthdir_y(4,cdir);
	}
	
	tree = instance_place(x,y-z,o_tree);
	//this is currently not pretty and creates problems when stick is at a distance where
	//it seems to just disappear out of thin air instead of just hiding itself
	if(distance_to_object(o_tree) < 6)
	{
		if(instance_exists(tree))
		{
			if(depth - tree.depth < 0)
			{
				visible = false;
			}
			else
			{
				depth = tree.depth -1;
				visible = true;
			}
		}
		else
		{
			
			visible = true;
		}
	}
	else
	{
		visible = true;
	}
	
	
	_speed = 0;

	IsGrabbed = true;
    //there's some kind of glitch(can't find or fix) that makes the swingattack not destroy itself sometimes, so this is a way of destroying it
    if instance_exists(o_swingattack)
    {
		with(o_potentialweapon)
		{
			damage = 0;
		}
        with(o_swingattack)
        {
            instance_destroy();
			
        }
    }
    xoffset = lengthdir_x(40, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    yoffset = lengthdir_y(36, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    
    x = o_player.x + xoffset;
    y = o_player.y + yoffset;

    z = (o_player.sprite_height/2);
	/*if(o_player.CanSwing == false)
	{
		image_angle = lerp(image_angle,point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + Angle,0.8);
	}
	else
	{
		image_angle = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + Angle;
	}*/
    image_angle = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + Angle;
	
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
}


/*

///State Grabbed
if (current_state == stickstate.Grabbed)
{

	_speed = 0;

	IsGrabbed = true;
    //there's some kind of glitch(can't find or fix) that makes the swingattack not destroy itself sometimes, so this is a way of destroying it
    if instance_exists(o_swingattack)
    {
        with(o_swingattack)
        {
            instance_destroy();
        }
    }
    xoffset = lengthdir_x(40, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    yoffset = lengthdir_y(32, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    
    x = o_player.x + xoffset;
    y = o_player.y + yoffset;

    z = (o_player.sprite_height/2);

    image_angle = point_direction(o_player.x,o_player.y,mouse_x,mouse_y) + Angle;
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
}