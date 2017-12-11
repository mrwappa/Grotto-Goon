///State Thrown
if (current_state == ballstate.Thrown)
{
	IsGrabbed = false;
    dir = point_direction(x,y,mouse_x,mouse_y);
    _speed+=23;
    current_state = ballstate.Normal;
    IsLethal = true;
}