/// @description Insert description here
// You can write your code in this editor

//draw_text(display_get_gui_width()-5, +40, o_player.axis_x);
//draw_text(display_get_gui_width()-5, +20, o_player.axis_y);
//draw_text(display_get_gui_width()-5, +60, o_player.x);
draw_text(display_get_gui_width()-5, +80, o_game.Balls);

if(instance_exists(o_player.GrabbableObject))
{
	draw_text(display_get_gui_width()-5, +100, o_player.GrabbableObject.z);
}


/*if(instance_exists(o_player) and instance_exists(o_movetest))
{
	draw_text(display_get_gui_width()-5, +130, o_player.axis_x);
	draw_text(display_get_gui_width()-5, +150, o_player.axis_y);
	
	draw_text(display_get_gui_width()-5, +190, o_movetest.xspeed);
	draw_text(display_get_gui_width()-5, +210, o_movetest.yspeed);
	
	draw_text(display_get_gui_width()-5, +240, o_movetest.ysolid);
	draw_text(display_get_gui_width()-5, +260, o_movetest.xsolid);
}*/

draw_text(display_get_gui_width()-5, +240, view_zoom);
draw_text(display_get_gui_width()-5, +260, display_get_width()/display_get_height());

if(instance_exists(o_movingenemy))
{
	draw_text(display_get_gui_width()-5, +280, o_movingenemy.z);
}
if(instance_exists(o_gui_object))
{
	draw_text(display_get_gui_width()-5, +680, o_gui_object.list_size);
}

if(instance_exists(o_button))
{
	draw_text(display_get_gui_width()-5, +700, o_button.height_sprite);
}


draw_text(display_get_gui_width()-5, +500, global.SM);
