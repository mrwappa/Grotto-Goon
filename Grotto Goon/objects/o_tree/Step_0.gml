/// @description Insert description here
// You can write your code in this editor

//TRY TO MAKE INSTANCE_PLACE_LIST SCRIPT WORK HERE, SO THAT ANY OBJECT WILL BE
//DISPLAYED BEHIND THE TREE

if(collision_rectangle(floor(x -(sprite_width)/2),floor(y -(sprite_height)/2), 
   floor(x + (sprite_width)/2), floor(y + (sprite_height)/2),o_player,true,true) 
   and o_player.depth > depth)
	{
		display_player = true;
		display_arm1 = true;
		display_arm2 = true;
		
	}
	else
	{
		display_player = false;
		display_arm1 = false;
		display_arm2 = false;
		
	}
/*if(display_player == true and display_arm1 == true and display_arm2 == true)
{
	if(instance_exists(o_solid))
	{
		with(instance_nearest(x,y,o_solid))
		{
			display_player = false;
			display_arm1 = false;
			display_arm2 = false;
		}
	}
}
	