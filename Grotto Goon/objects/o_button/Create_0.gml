/// @description Insert description here



//i havent created any dediciated dynamic system that fixes image scales with
//the button and the sprites that corresponds with it.

//therefore the image_xscale is just set to 5 to simplify things ATM
image_xscale = 5;
image_yscale = 2;

text_color = c_white;

color = c_white;

object = noone;

text = "";
text_height = string_height(text);
text_width = string_width(text);

color = c_white;

hover = false;

display_scale = display_get_gui_width()/view_w;

gui_mouse_x = (mouse_x-(view_x))*display_scale;
gui_mouse_y = (mouse_y-(view_y))*display_scale;

scale_sprite = 0;
xscale = 1;
yscale = 1;

if(object != noone)
{
	sprite = object_get_sprite(object);
	height_sprite = sprite_get_height(sprite);
	width_sprite = sprite_get_width(sprite);
}
else
{
	sprite = noone;
	height_sprite = 0;
	width_sprite = 0;
}