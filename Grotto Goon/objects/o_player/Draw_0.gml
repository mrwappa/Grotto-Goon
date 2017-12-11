 /// @description draw player and shadow
//shadow
if(current_state != state.Dodging)
{
	draw_sprite_ext(s_ball, image_index, round(x +1+ (angle_image/2)), round(y + 28 + abs(angle_image/1.5)), 2,1.25, 180 ,c_black,0.8);

	//sprite
	draw_sprite_ext(sprite_index, image_index,round(x),round(y + abs(angle_image*1.5)),image_xscale,image_yscale,angle_image,c_white,image_alpha);
}
else
{
	//shadow
	draw_sprite_ext(s_ball, image_index, round(x+1),
	 round(y + 28) , 2,1.25, 180 ,c_black,0.8);

	//sprite
	draw_sprite_ext(sprite_index, image_index,round(x),round(y),
	image_xscale,image_yscale,angle_image,c_white,image_alpha);
}
