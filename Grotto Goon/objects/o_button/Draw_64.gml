/// @description Insert description here
// You can write your code in this editor


if(object != noone)
{
	draw_sprite_ext(sprite_index,image_index,x,y,
	image_xscale,image_yscale,image_angle,color,image_alpha);

	draw_sprite_ext(object_get_sprite(object), image_index,round(x - (sprite_width/3.5)),y,
	xscale,yscale,image_angle,c_white,image_alpha);

}


//draw_set_font(f_bit);

draw_text_color(round(x + (sprite_width/4)+ text_width/6),round(y + (sprite_height/4)),
text,text_color,text_color,text_color,text_color,image_alpha);
