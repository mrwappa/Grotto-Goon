/// @description Insert description here
// You can write your code in this editor
///Sprite and Shadow
if(visible = true)
{
	if (current_state = stickstate.Normal)
	{
	    //shadow
	    draw_sprite_ext(sprite_index, image_index,round(x),round(y+z) + (sprite_height * image_yscale) -7,image_xscale,image_yscale, image_angle, c_black,0.6);  
	    //sprite
	    draw_sprite_ext(sprite_index,image_index,round(x),round(y), image_xscale, image_yscale,image_angle,Color,1);
	}
	else
	{
		//shadow
	    draw_sprite_ext(sprite_index, image_index,round(x + xoff),round(y+z+yoff) + (sprite_height * image_yscale * 0.5) -8,image_xscale - 0.3,image_yscale, image_angle, c_black,0.6);  
	    //sprite 
	    draw_sprite_ext(sprite_index,image_index,round(x),round(y), image_xscale, image_yscale,image_angle,Color,1);
	} 
}
