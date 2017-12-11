///State Slamprepare
if (current_state == ballstate.Slamprepare)
{
	hspeed = 0;
	vspeed = 0;
	image_angle = 0;
    with(o_player)
    {
        angle_image =0;
    }
    z = ((o_player.sprite_height/2) + image_yscale*2 + 1 + (sprite_height/5) + AdditionalScale * 5);
    dir = point_direction(x,y,mouse_x,mouse_y);
    s_speed += 8;
    
    current_state = ballstate.Slammed;
}