/// @description Insert description here
// You can write your code in this editor
//shadow
draw_sprite_ext(sprite_index, image_index, floor(x)
,floor(y +(sprite_height * (image_yscale)) - sprite_height * 1.5) - AdditionalScale * sprite_height
, (image_xscale *1.1) + (1 * z/110), (image_yscale/1.5) + (1 * z/110), image_angle, c_black, 0.8);

//sprite
draw_sprite_ext(sprite_index, image_index, floor(x),floor(y-z)
, image_xscale , image_yscale,image_angle,Color,(HP/100)*1.3);



/*if global.hitbox = true
{
draw_ellipse(floor(x -(sprite_width/2)),floor(y -(sprite_height/ 4.5) -z),
 floor(x + (sprite_width/ 2)), floor(y + (sprite_height/ 4.5) -z),true)

}*/

if HP > 0
{
    //draw_set_font(f_PusabSmall);
    draw_set_colour(c_white);
    draw_text_ext_transformed(floor(x), floor(y), HP, 3, 300, 1, 1, 0);
}