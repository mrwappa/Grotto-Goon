if(current_state == state.Dodging)
{

	//image_speed = (41/room_speed)*1.5/global.SM;
	image_speed = 0;
	sprite_index = s_player;
	roll_timer +=1;
	axis_x = 0;
	axis_y = 0;
	
	var speed_declining = 14*(roll_timer/10)/room_speed/global.SM
	if(alarm[2] == -1)
	{
		alarm[2] = 10;
	}
	if(roll_direction == 1)
	{
		//UP
		var collision = place_meeting(x,y-roll_speed,o_solid);
		roll_speed -= speed_declining;
		if(collision == false)
		{
			y-=roll_speed/(global.SM^0.5); 
		}
		
		
	}
	else if(roll_direction == 3)
	{
		//RIGHT
		var collision = place_meeting(x+roll_speed,y,o_solid);
		roll_speed -= speed_declining;
		if(collision == false)
		{
			x+=roll_speed/(global.SM^0.5);
		}
		/*angle_image = 270;
		image_angle = 270;*/
	}
	else if(roll_direction == 5)
	{
		//DOWN
		var collision = place_meeting(x,y+roll_speed,o_solid);
		roll_speed -= speed_declining;
		if(collision == false)
		{
			y+=roll_speed/(global.SM^0.5); 
		}
		/*angle_image = 180;
		image_angle = 180;*/
	}
	else if(roll_direction == 7)
	{
		//LEFT
		var collision = place_meeting(x-roll_speed,y,o_solid);
		roll_speed -= speed_declining;
		if(collision == false)
		{
			x-=roll_speed/(global.SM^0.5); 
		}
		/*angle_image = 90;
		image_angle = 90;*/
	}
	else if(roll_direction == 2)
	{
		//RIGHT AND UP
		var collision_x = place_meeting(x+roll_speed,y,o_solid);
		var collision_y = place_meeting(x,y-roll_speed,o_solid);
		roll_speed -= speed_declining;
		roll_diagonal = sqrt((roll_speed*2^2) + (roll_speed*2^2))
		if(collision_x == false)
		{
			x+=roll_diagonal/(global.SM^0.5); 
		}
		if(collision_y == false)
		{
			y-=roll_diagonal/(global.SM^0.5);
		}
		
		/*angle_image = 315;
		image_angle = 315;*/
	}
	else if(roll_direction == 4)
	{
		//RIGHT AND DOWN
		var collision_x = place_meeting(x+roll_speed,y,o_solid);
		var collision_y = place_meeting(x,y+roll_speed,o_solid);
		roll_speed -= speed_declining;
		roll_diagonal = sqrt((roll_speed*2^2) + (roll_speed*2^2))
		if(collision_x == false)
		{
			x+=roll_diagonal/(global.SM^0.5);
		} 
		if(collision_y == false)
		{
			y+=roll_diagonal/(global.SM^0.5);
		}
		/*angle_image = 315-90;
		image_angle = 315-90;*/
	}
	else if(roll_direction == 6)
	{
		//LEFT AND DOWN
		var collision_x = place_meeting(x-roll_speed,y,o_solid);
		var collision_y = place_meeting(x,y+roll_speed,o_solid);
		roll_speed -= speed_declining;
		roll_diagonal = sqrt((roll_speed*2^2) + (roll_speed*2^2))
		if(collision_x == false)
		{
			x-=roll_diagonal/(global.SM^0.5); 
		}
		if(collision_y == false)
		{
			y+=roll_diagonal/(global.SM^0.5);
		}
		/*angle_image = 315-90-90;
		image_angle = 315-90-90;*/
	}
	else if(roll_direction == 8)
	{
		//LEFT AND UP
		var collision_x = place_meeting(x-roll_speed,y,o_solid);
		var collision_y = place_meeting(x,y-roll_speed,o_solid);
		roll_speed -= speed_declining;
		roll_diagonal = sqrt((roll_speed*2^2) + (roll_speed*2^2))
		if(collision_x == false)
		{
			x-=roll_diagonal/(global.SM^0.5); 
		}
		if(collision_y == false)
		{
			y-=roll_diagonal/(global.SM^0.5);
		}
		//im lazy and don't want to count stuff in my head i guess
		/*angle_image = 315-90-90-90;
		image_angle = 315-90-90-90;*/
	}
	
	/// ADD COLLISION
	/// ADD COLLISION
	
	  
	if(roll_speed <= 4.1)
	{
		angle_image = 0;
		image_angle = 0;
		sprite_index = s_player;
		current_state = previous_state;
	}
	
	if(previous_state == state.Grabbing)
		{
			with(o_arm_1)
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
			with(o_arm_2)
			{
				speed = 0;
				//what the fuck are these instance_exists stacked for?
			    if(instance_exists(o_player.GrabbableObject))
			    {
			        if (instance_exists(o_player) and instance_exists(o_player.GrabbableObject))
			        {
			            //amature way to say: "BE IN FRONT OF BALL FOR FUCK SAKE"
			            image_angle = o_player.angle_image;
			            depth = o_player.GrabbableObject.depth -1;
			            x = floor(o_player.x - (10));
			            y = floor(o_player.y - 27+ abs(image_angle*1.5));
			            hspeed -= (o_player.axis_x*1.3);
			            vspeed -= (o_player.axis_y*1.3);
			        }
			    }
			}
		}
		else if(previous_state == state.Wielding)
		{
			with(o_arm_1)
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
			}
			with(o_arm_2)
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
			    xoffset = lengthdir_x(4, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
			    yoffset = lengthdir_y(8, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
    
			    x = o_player.x + xoffset;
			    y = o_player.y + yoffset;

			    z = (o_player.sprite_height/2);
			}
		}
		else if(previous_state == state.Normal)
		{
			with(o_arm_1)
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
			with(o_arm_2)
			{
				speed = 0;
			    if (instance_exists(o_player))
			    {
			        image_angle = o_player.angle_image;
			        hspeed -= (o_player.axis_x*0.35);
			        vspeed -= (o_player.axis_y*0.45);
			        depth=-y;
			        x = floor(o_player.x - (20));
			        y = floor(o_player.y +3 - abs(image_angle/1.5));

			    }
			}
		}
}