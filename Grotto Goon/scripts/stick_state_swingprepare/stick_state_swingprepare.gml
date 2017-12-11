///State SwingPrepare
if (current_state = stickstate.SwingPrepare)
{
	if(keyboard_check(ord("V")))
	{
		alarm[4] = 3 + global.SM;
	}
	else
	{
		alarm[4] = 3;
	}
	_speed = 0;
    if (alarm[2] == -1) 
    {
        alarm[2] = 1;
    }
    with(o_player)
    {
        CanSwing = false;
    }
    
    //starting value for angle change when swinging
    Change = 8/global.SM;
    if (Angle = 100)
    {
        Bend = false;
    }
    else if (Angle = -100)
    {
        Bend = true;
    }
    current_state = stickstate.Swung;
}