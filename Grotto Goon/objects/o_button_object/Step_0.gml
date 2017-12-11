/// @description Insert description here
// You can write your code in this editor


_x = view_x + x/2 + o_player.axis_x;
_y = view_y + y/2 + o_player.axis_y;

if(place_meeting(_x,_y,o_mouse))
{
	text_color = c_red;
	color = c_red;
	if(mouse_check_button_pressed(mb_left))
	{
		with(o_object_gui)
		{
			create_object = other.object;
		}
	}
}
else
{
	text_color = c_white;
	color = c_white;
}