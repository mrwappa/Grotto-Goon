/// @description Camera Shake, Apply Cameravalues and follow an object
FollowObject = o_player;

if(instance_exists(FollowObject))
{

	
	
	if(screenshake > 0)
	{
		screenshake = lerp(screenshake,0,0.27);
		view_x = FollowObject.x - (view_w/2) + choose(screenshake*choose(1,2),-screenshake*choose(1,2));
		view_y = FollowObject.y - (view_h/2) + choose(screenshake*choose(1,2),-screenshake*choose(1,2));
	}
	else
	{
		view_x = FollowObject.x - (view_w/2);
		view_y = FollowObject.y - (view_h/2);
	}
}


view_x=clamp(view_x,0,room_width-view_w);
view_y=clamp(view_y,0,room_height-view_h);

camera_set_view_size(view_camera[0],view_w,view_h);

var _round = round(view_w/surface_get_width(application_surface));
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));

//the difference here is that iv'e rounded of all the values

/*camera_set_view_size(view_camera[0],view_w,view_h);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));*/
