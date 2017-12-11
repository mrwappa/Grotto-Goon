///State Grabbed
if (current_state = ballstate.Grabbed)
{ 
    angle = o_player.angle_image;
    speed = 0;
    s_speed = 0;
	_speed = 0;
	a_speed = 0;
    IsGrabbed = true;
    Blinking = false;
    x = floor(o_player.x);
    y = floor(o_player.y + abs(angle*1.5));
    z = ((o_player.sprite_height/2) + image_yscale*2 + 1 + (sprite_height/5) + AdditionalScale * 5);
    hspeed -= (o_player.axis_x*1);
    vspeed -= (o_player.axis_y*1);
    depth = o_player.depth -1;
    
}