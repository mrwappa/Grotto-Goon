/// @description Insert description here
// You can write your code in this editor

//shadow
draw_sprite_ext(s_ball,image_index,round(x)-1,round(y)+7,
1.9 + (z/100),0.7 + (z/100),0,c_black,0.8);

//sprite
draw_sprite_ext(sprite_index,image_index,round(x),round(y-z),
image_xscale,image_yscale,angle,c_white,image_alpha);

//shadow
/*draw_sprite_ext(sprite_index, image_index, floor(x)
,floor(y +(sprite_height * (image_yscale)) - sprite_height * 1.5) - AdditionalScale * sprite_height
, (image_xscale *1.1) + (1 * z/110), (image_yscale/1.5) + (1 * z/110), image_angle, c_black, 0.8);

//sprite
draw_sprite_ext(sprite_index, image_index, floor(x),floor(y-z)
, image_xscale , image_yscale,image_angle,Color,(HP/100)*1.3);*/

/*//up
draw_line(round(x-(sprite_width/2) -1),round(y - (sprite_height/2)),
round(x+(sprite_width/2)-1),round(y - (sprite_height/2)));

//down
draw_line(round(x-(sprite_width/2) -1),round(y + (sprite_height/2)),
round(x+(sprite_width/2)-1),round(y + (sprite_height/2)));

//left
draw_line(round(x-(sprite_width/2) -1),round(y - (sprite_height/2)-1),
round(x-(sprite_width/2) -1),round(y + (sprite_height/2)-1));

//right
draw_line(round(x+(sprite_width/2) -1),round(y - (sprite_height/2)-1),
round(x+(sprite_width/2) -1),round(y + (sprite_height/2)-1));