/// @description Window Zoom
/*if(keyboard_check_pressed(ord("Z")))
{
  zoom++;
  
  if(zoom>max_zoom)
    zoom=1;
  
  window_set_size(ideal_width*zoom,ideal_height*zoom);
  surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  alarm[0]=1;
}*/


var zoom_speed = .01; //0.1 is the default

if(view_zoom_extra == 1)
{
	if(mouse_wheel_down())
	{
		view_zoom -= 162/4/view_w;
		zoom_ = true;
	}
	else if(mouse_wheel_up())
	{
		view_zoom += 162/4/view_w;
		zoom_ =  false;
	}
}





/*view_zoom+=keyboard_check_pressed(vk_up)*zoom_speed;  //keyboard_check_pressed is the default
view_zoom-=keyboard_check_pressed(vk_down)*zoom_speed;

if(view_w/view_h != display_get_width()/display_get_height())
{
	if(keyboard_lastkey = vk_up)
	{
		view_zoom+=0.01;
	}
	else if(keyboard_lastkey = vk_down)
	{
		view_zoom-=0.01;
	}
	
}*/


/*if(view_w/view_h != display_get_width()/display_get_height() 
and !keyboard_check(ord("V")) and view_zoom_extra == 1)
{*/


//BEWARE THAT THE COMMENTED CODE ABOVE THIS ONE WAS THE ORIGINAL IF STATEMENT, DON'T FORGET THIS
if(!keyboard_check(ord("V")) and view_zoom_extra == 1)
{
	/*if(zoom_ =  false)
	{
		view_zoom+=0.015;
	}
	else if(zoom_ = true)
	{
		view_zoom-=0.015;
	}	*/
	
}
else if(keyboard_check(ord("V")))
{
	view_zoom_extra = lerp(view_zoom_extra,1.3,0.4);
}
else
{
	view_zoom_extra = lerp(view_zoom_extra,1,0.5);
}



view_zoom=clamp(view_zoom,max_zoom_pan,view_max_zoom);



view_w = round(ideal_width*zoom/view_zoom/view_zoom_extra/width_difference);
view_h = round(ideal_height*zoom/view_zoom/view_zoom_extra/width_difference);



surface_resize(application_surface,view_w,view_h);

