///State Swung
if (current_state = stickstate.Swung)
{

    with(o_player)
    {
        CanSwing = false;
    }
	if(swinging = false)
	{
		xm = mouse_x;
		ym = mouse_y;
		playerx = o_player.x;
		playery = o_player.y;
	}
	image_angle = point_direction(playerx,playery,xm,ym) + Angle;
    xoffset = lengthdir_x(40, point_direction(playerx, playery, xm,ym)+Angle);
    yoffset = lengthdir_y(32, point_direction(playerx, playery, xm,ym)+Angle);
    
    x = o_player.x + xoffset;
    y = o_player.y + yoffset;

    z = (o_player.sprite_height/2);
	
    
	
	
    Change *= 1.15;//1.15
	//Change = 1.15;
    if (Bend = true)
    {
		swinging = true;
        Angle +=Change/global.SM;
        if(Angle >= 100)
        {
            Angle = 100;
            if instance_exists(SwingAttack)
            {
				with(o_potentialweapon)
				{
					damage = 0;
				}
                with(SwingAttack)
                {
                    instance_destroy();
                }
            }
			if(keyboard_check(ord("V")))
			{
				alarm[0] = 25*2;
			}
			else
			{
				alarm[0] = 25;
			}
			swinging = false;
            current_state = stickstate.Grabbed;
        }
    }
    else if (Bend = false)
    {
		swinging = true;
        Angle -=Change/global.SM;
        if(Angle <= -100)
        {
            Angle = -100;
            if instance_exists(SwingAttack)
            {
                with(SwingAttack)
                {
                    instance_destroy();
					with(o_potentialweapon)
					{
						damage = 0;
					}
                }
                
            }
			if(keyboard_check(ord("V")))
			{
				alarm[0] = 25*2;
			}
			else
			{
				alarm[0] = 25;
			}
			swinging = false;
            current_state = stickstate.Grabbed;
        }
    }
    Angle = clamp(Angle,-120,120)
}