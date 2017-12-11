///State Thrown
if (current_state = stickstate.Thrown)
{
	Angle = -100;
	dir = point_direction(x,y,mouse_x,mouse_y);
	_speed +=26;
    IsLethal = true;
    current_state = stickstate.Normal;

}