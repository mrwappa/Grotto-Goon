/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
if(instance_exists(o_player))
{
	draw_text(display_get_gui_width()-5, +200, o_player.roll_timer);
	draw_text(display_get_gui_width()-5, +240, o_player.image_xscale);
	draw_text(display_get_gui_width()-5, +270, o_player.image_yscale);
}
if(instance_exists(o_explosion))
{
	draw_text(display_get_gui_width()-5, +300, o_explosion.image_index);
}



draw_text(display_get_gui_width()-5, +50, view_zoom);
