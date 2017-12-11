/// @description Insert description here
// You can write your code in this editor

x_camera_center = view_x + (view_w/2);
y_camera_center = view_y + (view_h/2);


screen_width = display_get_gui_width();
screen_height = display_get_gui_height();

x = screen_width*0.1;
y = screen_height*0.2;

_x = view_x + x/2 + o_player.axis_x;
_y = view_y + y/2 + o_player.axis_y;

if(place_meeting(_x,_y,o_mouse))
{
	text_color = c_blue;
	if(mouse_check_button_pressed(mb_left))
	{
		
		if(instance_exists(button))
		{
			with(o_button_object)
			{
				instance_destroy();
			}
		}
		else
		{
			stoploop = false;
		}
	}
	else
	{
		stoploop = true;
	}
}
else
{
	text_color = c_white;
}



