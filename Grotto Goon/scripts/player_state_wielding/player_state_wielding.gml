 ///Wielding State
if(current_state = state.Wielding)
{
	if(WieldingObject.current_state != WieldingObject.SwungState)
	{
		player_dodge(state.Wielding);
	}
	
    movement_speed = 4/global.SM;
	
	if(!instance_exists(WieldingObject))
    {
        current_state = state.Normal;
    }
	
	if(WieldingObject.current_state = WieldingObject.GrabbedState)
	{
		if keyboard_check_pressed(vk_shift)
		{
		    with(WieldingObject)
		    {
				
		        current_state = NormalState;
		    }
		    current_state = state.Normal;
		}
	}
	
    if (CanSwing = true and WieldingObject.current_state = WieldingObject.GrabbedState)
    {
        
        
        if (mouse_check_button_pressed(mb_left))
        {
            if instance_exists(WieldingObject)
            {
                with(WieldingObject)
                {
                    current_state = SwingPrepareState;
                }
            }
        }
		
        if (keyboard_check_pressed(vk_space))
        {
            
            if instance_exists(WieldingObject)
            {
                with(WieldingObject)
                {
                    current_state = ThrownState;
                }
            }
            current_state = state.Normal;
        }
    
    }
	
    var speed_image;
    var angle_speed = 0;
    var angle_animation = false;
    
    if (axis_y < -0.1)
    {
        //turn character around
        image_xscale =-0.8;
    }
    else
    {
        image_xscale = 0.8;
    }
    if (axis_x !=0 or axis_y!=0)
    {
        angle_animation = true;
        image_speed = 0.8/global.SM;
        //image_speed = clamp(image_speed,0,(1.5))
    }
    else
    {
		angle_animation = false;
        image_speed = 0;
    }
    
    angle_speed =clamp(angle_speed,0,2);
    angle_image = clamp(angle_image,-6.5,6.5);
    if (angle_animation = true)
    { 
        angle_speed += 42/room_speed/global.SM;
        if (angle_plus = true)
        {
            angle_image += angle_speed/global.SM;
            if(angle_image >= 6)
            {
                angle_plus = false;
                angle_minus = true;
            }
        }
        else if (angle_minus = true)
        {
            angle_image -= angle_speed/global.SM;
            if(angle_image <= -6)
            {
                angle_plus = true;
                angle_minus = false;
            }
        }
    }
    else
    {
        image_index =0;
        angle_image = lerp(angle_image,0,42/room_speed)
        
    }     
	
	
}    