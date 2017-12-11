 if(mouse_check_button_pressed(mb_right))
	{
		image_index = 0;
		var back_1 = false;
		var back_2 = false;
		angle_image = 0;
		roll_speed = 12;
		roll_timer = 0;
		
		
		if(keyboard_check(ord("W")))
		{
			//UP
			roll_direction = 1;
			//current_state = state.Dodging;
		}
		else if(keyboard_check(ord("D")))
		{
			//RIGHT
			roll_direction = 3;
			//current_state = state.Dodging;
		}
		else if(keyboard_check(ord("S")))
		{
			//DOWN
			roll_direction = 5;
			//current_state = state.Dodging;
		}
		else if(keyboard_check(ord("A")))
		{
			//LEFT
			roll_direction = 7;
			//current_state = state.Dodging;
		}
		else
		{
			back_1 = true;
		}
		
		if(keyboard_check(ord("W")) and keyboard_check(ord("D")))
		{
			//RIGHT AND UP
			roll_direction = 2;
			//current_state = state.Dodging;
			
		}
		else if(keyboard_check(ord("S")) and keyboard_check(ord("D")))
		{
			//RIGHT AND DOWN
			roll_direction = 4;
			//current_state = state.Dodging;
		}
		else if(keyboard_check(ord("A")) and keyboard_check(ord("S")))
		{
			//LEFT AND DOWN
			roll_direction = 6;
			//current_state = state.Dodging;
		}
		else if(keyboard_check(ord("A")) and keyboard_check(ord("W")))
		{
			//LEFT AND UP
			roll_direction = 8;
			//current_state = state.Dodging;
		}
		else
		{
			back_2 = true;
		}
		
		if(back_1 == false or back_2 == false)
		{
			previous_state = argument0;
			
			current_state = state.Dodging;
		}

	}