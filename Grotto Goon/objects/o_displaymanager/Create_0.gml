/// @description Display Properties

//



zoom_ = false;

previous_zoom = 1;
view_zoom_extra = 1;
view_zoom=1;

screenshake = 0;

ideal_width=0;
ideal_height=540;
zoom=1;

display_width=display_get_width();
display_height=display_get_height();

aspect_ratio=display_width/display_height;

ideal_width=round(ideal_height*aspect_ratio);


//ideal_height=round(ideal_width / aspect_ratio);

//"Perfect Pixel Scaling"
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
if(ideal_height &  1)
{
	ideal_height++;
}
width_difference = abs(ideal_width/960);

//Calculate Max Zoom

max_zoom=floor(display_width/ideal_width)-1;
window_sizing=floor(display_width/ideal_width);

//window_set_size(ideal_width*window_sizing,ideal_height*window_sizing);

//this here should be the window_set_size, never ever is it not going to be anything but the display size
//if there's not some magic going on with 4k resolution monitors that I haven't checked
//but yeah, I feel retarded for even thinking of mixing up a "window_sizing" variable in all of this
window_set_size(display_width,display_height);

surface_resize(application_surface,ideal_width/width_difference,ideal_height/width_difference);
//display_set_gui_size(960,540);
  
alarm[0]=1; //This will center the window after the initial resizing.



camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_x = 0;
view_y = 0;
view_w = ideal_width*zoom/width_difference;
view_h = ideal_height*zoom/width_difference;
view_max_zoom=view_w/view_h;
max_zoom_pan = view_h/view_w;
display_set_gui_size(view_w,view_h);

room_goto_next();
