if(retracting = true)
{
	draw_line_width_color(x,y + retract,x,y+length,1,color,color);
}
else
{
	draw_line_width_color(x,y,x,y+length- retract ,1,color,color);
}