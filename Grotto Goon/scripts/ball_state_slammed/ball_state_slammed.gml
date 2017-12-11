///State Slammed
if (current_state == ballstate.Slammed)
{
    depth = (-y-z);
    //direction = dir;
	
    z -= 6.3/global.SM;
	
    if (z <= -7)
    {
        //delay slamattack by 1 frame
        if (alarm[3] == -1) 
        {
            alarm[3] = 1;
        }
		s_speed = 5;
        z = -7;
        dir -= 180;
        ShakeScreen(10 + (AdditionalScale * 8)); 
		HP -= tear;
        current_state = ballstate.ReturnSlam;
    }
    with(o_player)
    {
        if instance_exists(GrabbableObject)
        {
            if(GrabbableObject.dir >= 0 and GrabbableObject.dir <= 45)
            {
                image_yscale -= 0.5/room_speed/global.SM;
				angle_image -= 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= 315 and GrabbableObject.dir <= 360)
            {
                image_yscale -= 0.5/room_speed/global.SM;
				angle_image -= 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= 180 and GrabbableObject.dir <= 225)
            {
                image_yscale -= 0.5/room_speed/global.SM;
				angle_image += 0.8/global.SM;
            }
            else if(GrabbableObject.dir >= 135 and GrabbableObject.dir <= 180)
            {
                image_yscale -= 0.5/room_speed/global.SM;
				angle_image += 0.8/global.SM;
            }
            else if(GrabbableObject.dir <= 135 and GrabbableObject.dir >= 45)
            {
                image_yscale -= 1/room_speed/global.SM;	
            }
			else if(GrabbableObject.dir <= 315 and GrabbableObject.dir >= 225)
            {
                image_yscale -= 1/room_speed/global.SM;
            }
        }
    }
}