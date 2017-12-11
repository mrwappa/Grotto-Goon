/// @description Display Properties

//


zoom_ = false;

max_zoom_pan = 0.6;
previous_zoom = 1;
view_zoom_extra = 1;
view_zoom=1;
view_max_zoom=1.25;
screenshake = 0;

ideal_width=0;
ideal_height=660;
zoom=1;
max_zoom=2;
display_width=display_get_width();
display_height=display_get_height();

aspect_ratio=display_width/display_height;
if(aspect_ratio == 1366/768 or 
aspect_ratio == 1360/768 or 
aspect_ratio == 1280/720 or 
aspect_ratio == 1024/768 or 
aspect_ratio == 1176/664 or 
aspect_ratio == 1280/768 or 
aspect_ratio == 1280/800)
{
	ideal_width=round(ideal_height*aspect_ratio)/1.5;
	ideal_height/=1.5;
}
else
{
	//leave this as the only thing left if you want to go back to 
	//a project with your sanity left
	ideal_width=round(ideal_height*aspect_ratio);
}

//ideal_height=round(ideal_width / aspect_ratio);

//Perfect Pixel Scaling
if(display_width mod ideal_width != 0)
{
  var d = round(display_width/ideal_width);
  ideal_width=display_width/d;
}
if(display_height mod ideal_height != 0)
{
  var d = round(display_height/ideal_height);
  ideal_height=display_height/d;
}

//Check for odd numbers
if(ideal_width & 1)
{
	ideal_width++;
}
if(ideal_height & 1)
{
	ideal_height++;
}
  
if(display_width <= 1280 and display_width!= 800)
{
	max_zoom_pan = 0.4;
}
else if(display_width <= 1440 and display_width!= 800)
{
	max_zoom_pan = 0.5;
}
//Calculate Max Zoom
max_zoom=floor(display_width/ideal_width);
//max_zoom=floor(display_width/ideal_width)-1;  

/*when done with the project and ready to launch, make sure to set these values to 
ideal_height*zoom and not ideal_height*zoom*2, then enable fullscreen in windows and other 
settings there necessary */


/*continuation of previous paragraph ^^^ 
now you should remove max zoom instead!*/
if(display_width == 1366 )
{
	window_set_size((ideal_width*zoom*max_zoom*2)-2,ideal_height*zoom*max_zoom*2);
}
else if(display_height == 1200 and display_width == 1600)
{
	window_set_size((ideal_width*zoom*max_zoom*1.5)-3,ideal_height*zoom*max_zoom*1.5);
	max_zoom_pan = 0.4;
}
else
{
	window_set_size(ideal_width*zoom*max_zoom,ideal_height*zoom*max_zoom);
}
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
display_set_gui_size(ideal_width*1.5,ideal_height*1.5);
  
alarm[0]=1; //Sorry.  This line got left out of the tutorial vid.  This will center the window after the initial resizing.



camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;


room_goto_next();
