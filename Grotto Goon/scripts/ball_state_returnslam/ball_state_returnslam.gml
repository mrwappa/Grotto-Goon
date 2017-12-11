///State ReturnSlam
if (current_state == ballstate.ReturnSlam)
{
    depth = (-y-z)/* + (sprite_height/(image_yscale/1.2))*/;
    z+=5.5/global.SM;
    
    if (z >= (o_player.sprite_height/2) + image_yscale*2 + 1 + (sprite_height/5) + AdditionalScale * 5)
    {
        s_speed = 0;
		_x = 0;
		_y = 0;
        if (alarm[1] == -1) 
        {
            alarm[1] = 7 + round(AdditionalScale *2);//cheeky way of making bigger balls seem more heavy  
        }
        current_state = ballstate.Grabbed;
        
    }
    with(o_player)
    {   
        if instance_exists(GrabbableObject)
        {
            if(GrabbableObject.dir >= -180 and GrabbableObject.dir <= -135)
            {
                image_yscale += 0.5/room_speed/global.SM;
				angle_image += 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= 135 and GrabbableObject.dir <= 180)
            {
                image_yscale += 0.5/room_speed/global.SM;
				angle_image += 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= 0 and GrabbableObject.dir <= 45)
            {
                image_yscale += 0.5/room_speed/global.SM;
				angle_image -= 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= -45 and GrabbableObject.dir <= 0)
            {
                image_yscale += 0.5/room_speed/global.SM;
				angle_image -= 0.8/global.SM;
            }
            else if(GrabbableObject.dir <= -45 and GrabbableObject.dir >= -135)
            {
                image_yscale += 1/room_speed/global.SM;
            }
			else if(GrabbableObject.dir <= 135 and GrabbableObject.dir >= 45)
            {
                image_yscale += 1/room_speed/global.SM;
            }
        }
    }
    
}

