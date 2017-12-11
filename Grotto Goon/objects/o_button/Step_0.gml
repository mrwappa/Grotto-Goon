/// @description Insert description here
// You can write your code in this editor

if(object != noone)
{
	sprite = object_get_sprite(object)
	height_sprite = sprite_get_height(sprite);
	width_sprite = sprite_get_width(sprite);
	if(height_sprite > sprite_height)
	{
		var yscaling = 1 - (sprite_height/height_sprite);
		yscale = 1 - yscaling*1.2;
		if(xscale <= sprite_width/2)
		{
			xscale = yscale;
		}
	}
	
	if(width_sprite > sprite_width/2)
	{
		xscale = 0.3;
	}
	
}
else
{
	height_sprite = 0;
}
gui_mouse_x = (mouse_x-(view_x))*display_scale;
gui_mouse_y = (mouse_y-(view_y))*display_scale;

display_scale = display_get_gui_width()/view_w;

screen_width = display_get_gui_width();
screen_height = display_get_gui_height();




if(gui_mouse_x > x - sprite_width/2 and gui_mouse_x < x + sprite_width/2
	and gui_mouse_y > y - sprite_height/2 and gui_mouse_y < y + sprite_height/2)
{
	color = c_black;
	if(mouse_check_button_pressed(mb_left))
	{
		with(o_gui_object)
		{
			create_object = other.object;
		}
		with(o_button)
		{
			instance_destroy();
		}
	}
}
else
{
	color = c_white;
}

