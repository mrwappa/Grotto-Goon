if(retracting = 1)
{
	draw_line_width_color(x + lengthdir_x(re_length,re_dir) ,y+ lengthdir_y(re_length,re_dir)
	,x + lengthdir_x(length,dir),y +lengthdir_y(length,dir) ,1,color,color);
}
else
{
	draw_line_width_color(x,y,x + lengthdir_x(length,dir)- lengthdir_x(re_length,re_dir)
	,y +lengthdir_y(length,dir)- lengthdir_y(re_length,re_dir) ,1,color,color);
}