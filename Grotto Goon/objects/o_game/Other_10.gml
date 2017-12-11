/// @description Toggle Pause
// You can write your code in this editor

if(paused_ == false)
{
	paused_ = true;
	
	instance_deactivate_all(true);
}
else
{
	
	paused_ = false;
	instance_activate_all();
}