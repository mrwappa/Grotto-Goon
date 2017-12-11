/// @description Insert description here
// You can write your code in this editor


gui_mouse_x = (mouse_x-(view_x))*display_scale;
gui_mouse_y = (mouse_y-(view_y))*display_scale;

display_scale = display_get_gui_width()/view_w;

screen_width = display_get_gui_width();
screen_height = display_get_gui_height();
x = screen_width*0.1;
y = screen_height*0.3;




if(gui_mouse_x > x - sprite_width/2 and gui_mouse_x < x + sprite_width/2
	and gui_mouse_y > y - sprite_height/2 and gui_mouse_y < y + sprite_height/2)
{
	color = c_blue;

	if(mouse_check_button_pressed(mb_left))
	{
		if(instance_exists(button))
		{
			with(o_button)
			{
				instance_destroy();
			}
		}
		else
		{
			stoploop = false;
		}
	}
	else
	{
		stoploop = true;
	}
}
else
{
	color = c_white;
}


if(stoploop == false)
{
	for (i=0; i<list_size; i++)
	{
	
		button = instance_create(x+sprite_width*2,y + yposition,o_button);
		object_value = ds_list_find_value(object_list, i);
		yposition += sprite_height*button.image_yscale/2;
		with(button)
		{
			object = other.object_value;
			text = object_get_name(object);
			text_height = string_height(text);
			text_width = string_width(text);
			if(text_width > sprite_width/1.4)
			{
				image_xscale = text_width/30;
			}
		}
		
		if(i == list_size-1)
		{
			stoploop = true;
			yposition = 0;
		}
	
	}

}


if(keyboard_check_pressed(vk_tab))
{
	if(spam_state == spam.not_spamming)
	{
		spam_state = spam.spamming;
	}
	else if(spam_state == spam.spamming)
	{
		spam_state = spam.not_spamming;
	}
}
if(spam_state == spam.not_spamming)
{
	if(keyboard_check_pressed(ord("Q")))
	{
		if(create_object != noone)
		{
			instance_create(mouse_x,mouse_y,create_object);
		}
	
	}
}
else if(spam_state == spam.spamming)
{
	if(keyboard_check(ord("Q")))
	{
		if(create_object != noone)
		{
			instance_create(mouse_x,mouse_y,create_object);
		}
	
	}
}

/*if(instance_exists(o_button))
{
	if(mouse_wheel_down())
	{
		with(o_button)
		{
			y+= sprite_height;
		}
	}
	if(mouse_wheel_up())
	{
		with(o_button)
		{
			y-= sprite_height;
		}
	}
}*/