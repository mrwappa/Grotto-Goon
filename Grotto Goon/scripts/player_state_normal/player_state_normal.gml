if (current_state == state.Normal)
{
//grabbable enemy turned into a slammable weapon
	movement_speed = 4/global.SM;
	
    if (instance_exists(o_slamobject))
    {
        if (distance_to_object(o_slamobject) < 35)
        {
            GrabbableObject = instance_nearest(x,y,o_slamobject);
            /*to make this as universal as possible, there has to be a z variable and a
            grabbable variable*/
            if (distance_to_object(GrabbableObject) < 20 and 
            (GrabbableObject.z - z) < 40 and GrabbableObject.IsGrabbed = false)
            {
                with(instance_nearest(x,y,o_slamobject))
                {
                    Blinking = true;
                }
                if (distance_to_object(GrabbableObject) < 20 and 
                (GrabbableObject.z - z) < 40 and keyboard_check_pressed(vk_shift) 
                and GrabbableObject.IsGrabbed = false and GrabbableObject.Blinking = true)
                {
                    alarm[0] = 1;
                }
            }
            else
			{
				with(instance_nearest(x,y,o_slamobject))
                { 
                    Blinking = false;
                }
			}
            
        }
    }
    
    //grabbable and slammable weapon
    if (instance_exists(o_slamweapon))
    {
        if (distance_to_object(o_slamweapon) < 35)
        {
            GrabbableObject = instance_nearest(x,y,o_slamweapon);
            /*to make this as universal as possible, there has to be a z variable and a
            grabbable variable*/
            if (distance_to_object(GrabbableObject) < 20 and 
            (GrabbableObject.z - z) < 40 and GrabbableObject.IsGrabbed = false)
            {
                with(instance_nearest(x,y,o_slamweapon))
                {
                    Blinking = true;
                }
                if (distance_to_object(GrabbableObject) < 20 and
                (GrabbableObject.z - z) < 40 and keyboard_check_pressed(vk_shift)
                and GrabbableObject.IsGrabbed = false and GrabbableObject.Blinking = true)
                {
                    alarm[1] = 1;
                }
            }
            else
			{
				with(instance_nearest(x,y,o_slamweapon))
                {
                    Blinking = false;
                }
			}
            
        }
    }
    //grabbable enemy turned into a swingable weapon
    if (instance_exists(o_swingobject))
    {
        if (distance_to_object(o_swingobject) < 35)
        {
            WieldingObject = instance_nearest(x,y,o_swingobject);
            /*to make this as universal as possible, there has to be a z variable and a
            grabbable variable*/
            if (distance_to_object(WieldingObject) < 20 and 
            (WieldingObject.z - z) < 40 and WieldingObject.IsGrabbed = false)
            {
                with(instance_nearest(x,y,o_swingobject))
                {
                    Blinking = true;
                }
                if (distance_to_object(WieldingObject) < 20 and
                (WieldingObject.z - z) < 40 and keyboard_check_pressed(vk_shift)
                and WieldingObject.IsGrabbed = false and WieldingObject.Blinking = true)
                {
                    alarm[1] = 1;
                }
            }
            else
			{
				with(instance_nearest(x,y,o_swingobject))
                {
                    Blinking = false;
                }
			}
            
        }
    }
    //grabbable and swingable weapon
    if (instance_exists(o_swingweapon))
    {
        if (distance_to_object(o_swingweapon) < 35)
        {
            WieldingObject = instance_nearest(x,y,o_swingweapon);
            /*to make this as universal as possible, there has to be a z variable and a
            grabbable variable*/
            if (distance_to_object(WieldingObject) < 20 and 
            (WieldingObject.z - z) < 40 and WieldingObject.IsGrabbed = false)
            {
                with(instance_nearest(x,y,o_swingweapon))
                {
                    Blinking = true;
                }
                if (distance_to_object(WieldingObject) < 20 and
                (WieldingObject.z - z) < 40 and keyboard_check_pressed(vk_shift)
                and WieldingObject.IsGrabbed = false and WieldingObject.Blinking = true)
                {
                    alarm[1] = 1;
                }
            }
            else
			{
				with(instance_nearest(x,y,o_swingweapon))
                {
                    Blinking = false;
                }
			}
            
        }
    }
    //a crude way to make sure that weapon isn't prioritised at all times, wihch seems to be the case otherwise
    if (instance_exists(o_weapon) and instance_exists(o_enemy))
    {
        NearestWeapon = instance_nearest(x,y,o_weapon);
        NearestEnemy = instance_nearest(x,y,o_enemy);
        
        if (NearestWeapon.Blinking == true and NearestEnemy.Blinking == true)
        {
            with(NearestWeapon)
            {
                Blinking = false;
            }
			with(NearestEnemy)
			{
				Blinking = true;
			}
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
            angle_image -= angle_speed /global.SM;
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
	
	player_dodge(state.Normal);
}