 ///State Slamming
if (current_state == state.Slamming)
{

    
	
    movement_speed =lerp(movement_speed,0,0.04/global.SM);
    angle_speed = 0;
    sprite_index = s_player_slamupdown;
    image_speed = 1/2;
    image_index = 0;
	if (!instance_exists(GrabbableObject) or GrabbableObject.HP <= 0)
    {
        current_state = state.Normal;
    }
    
}
else
{
    image_yscale = 0.8;
    sprite_index = s_player;
}
