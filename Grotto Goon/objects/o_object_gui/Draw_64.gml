/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,round(x),round(y)
,image_xscale*1.5,image_yscale*1.5,image_angle,color,image_alpha);
draw_set_font(f_bit);

draw_text_color(round(x + (text_width/2.3)*image_xscale),
round(y + (text_height/2.3)*image_yscale),
text,text_color,text_color,text_color,text_color,image_alpha); 