/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,color,image_alpha);

if(bottomline == true)
{
	/*draw_line(round(x  - sprite_width/1.95),round(y + sprite_height/2), 
	round(x+sprite_height/1.18), round(y + sprite_height/2));*/
	
	draw_line(round(x-(sprite_width/2) -1),round(y + (sprite_height/2)),
round(x+(sprite_width/2)-1),round(y + (sprite_height/2)));
}

if(topline == true)
{
	/*draw_line(round(x - sprite_width/1.95),round(y - sprite_height/2), 
	round(x+sprite_height/1.18), round(y - sprite_height/2));*/
	
	draw_line(round(x-(sprite_width/2) -1),round(y - (sprite_height/2)),
round(x+(sprite_width/2)-1),round(y - (sprite_height/2)));
}

if(rightline == true)
{
	/*draw_line(round(x + (sprite_width/2)),round(y - (sprite_height/2)),
	round(x + (sprite_width/2) ),round(y + (sprite_height/2)));*/
	
	draw_line(round(x+(sprite_width/2) -1),round(y - (sprite_height/2)-1),
round(x+(sprite_width/2) -1),round(y + (sprite_height/2)-1));
}

if(leftline == true)
{
	/*draw_line(round(x - (sprite_width/2)),round(y - (sprite_height/2)),
	round(x - (sprite_width/2) ),round(y + (sprite_height/2)));*/
	
	draw_line(round(x-(sprite_width/2) -1),round(y - (sprite_height/2)-1),
round(x-(sprite_width/2) -1),round(y + (sprite_height/2)-1));
}

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