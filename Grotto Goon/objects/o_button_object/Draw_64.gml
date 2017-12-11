/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,round(x),round(y)
,image_xscale*2,image_yscale*2,image_angle,color,image_alpha);
draw_set_font(f_bit);

draw_text_color(round(x + sprite_width/2 + text_width/4),
round(y + (text_height/1.8)*image_yscale),
text,text_color,text_color,text_color,text_color,image_alpha); 