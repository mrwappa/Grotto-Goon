/// @description Insert description here
// You can write your code in this editor
//shadow
draw_sprite_ext(s_blob,image_index,x-5,(y+sprite_height/2.2),4.3,2.5,0,c_black, 0.8)
//sprite
draw_self();

/*draw_rectangle(floor(x -(sprite_width)/2),floor(y -(sprite_height)/2), 
                floor(x + (sprite_width)/2), floor(y + (sprite_height)/2),true);*/
				
if(display_player == true)
{
	if(o_player.current_state = o_player.DodgingState)
	{
		draw_sprite_ext(Object.sprite_index, Object.image_index, (Object.x), (Object.y), Object.image_xscale
    , Object.image_yscale, Object.angle_image, c_dkgray, 0.5);
	}
	else
	{
		draw_sprite_ext(Object.sprite_index, Object.image_index, (Object.x), (Object.y + abs(Object.angle_image*1.5)), Object.image_xscale
    , Object.image_yscale, Object.angle_image, c_dkgray, 0.5);
	}
	
}
if(display_arm1 == true)
{
	draw_sprite_ext(arm1.sprite_index, arm1.image_index, floor(arm1.x), floor(arm1.y), arm1.image_xscale
    , arm1.image_yscale, arm1.image_angle, c_black, 0.5);
}
if(display_arm2 == true)
{
	draw_sprite_ext(arm2.sprite_index, arm2.image_index, floor(arm2.x), floor(arm2.y), arm2.image_xscale
    , arm2.image_yscale, arm2.image_angle, c_black, 0.5);
}