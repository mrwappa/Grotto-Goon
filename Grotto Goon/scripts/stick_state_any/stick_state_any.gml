///Any State
depth = (-y-z);
 
if (IsLethal == true and _speed <= 3) //used to be speed variable
{
    IsLethal = false;
}
if (Blinking = true)
{
    if (instance_exists(o_potentialweapon))
    {
        with(instance_nearest(x,y-z,o_potentialweapon))
        {
            Blinking = false;
        }
    }
    
    Color = MergeColor;
}
else
{
    Color = ColorType;
}

if(_speed > 0)
{
	x+= lengthdir_x(_speed/global.SM,dir);
	y+= lengthdir_y(_speed/global.SM,dir);
}
if!(current_state == stickstate.Normal)
{
	Blinking = false;
}
if(instance_exists(o_player))
{
    if(o_player.current_state == NormalState and current_state != ThrownState)
    {
        current_state = NormalState;
    }
} 


