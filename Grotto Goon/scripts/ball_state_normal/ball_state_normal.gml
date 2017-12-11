if (current_state = ballstate.Normal)
{
	
	image_angle = 0;
	hspeed = 0;
	vspeed = 0;
	randomize();
	depth = -y-z;

	
	if (alarm[0] == -1) 
    {
        alarm[0] = 7;
    }
	
	if(_speed <= 0.2 and global.SM ==1)
	{
		IsLethal = false;
	}
	
	if (IsLethal = false)
    {
        zspeed -= 0.2;
        
        if ((z + zspeed) < 0)
        {
            while(z +  sign(zspeed) > 0)
            {
                z += sign(zspeed);
            }
            if (abs(zspeed) > 1.5)
            {
                zspeed *= -0.74;
            }
            else
            {
                zspeed = 0
            }
        }
        else
        {
            z += zspeed/global.SM;
        }
         knockbackspeed = abs(_speed) + abs(a_speed);
		 _speed = lerp(_speed,0,0.05/global.SM);
    }//behavior of a thrown ball
    else if (IsLethal = true)
    {
        zspeed -= 0.8/global.SM;
        
        if ((z + zspeed) < 0)
        {
            while(z + sign(zspeed) > 0)
            {
                z += sign(zspeed);
            }
            if (abs(zspeed) > 3)
            {
                zspeed *= -0.4;
            }
            else
            {
                zspeed = 0
            }
        }
        else
        {
            z += zspeed/global.SM;
        }
         knockbackspeed = 9;
		 _speed = lerp(_speed,0,0.06/global.SM);
    }
	
	if(instance_exists(o_potentialweapon))
	{
		instance = instance_place(x,y-z,o_potentialweapon);
	}
	//collision with potentialweapon
	if(instance_exists(instance))
	{
		//this collisionchecking is not suppose to work when you look at it
		//but because of some black magic from object_is_ancestor it somehow works.
		//object_get_name and object_get_parent is confusing AND a bit broken,
		//look at the tree(solid) collision for a potential fix!
		if(instance.IsGrabbed = true)
		{
			if(object_is_ancestor(instance.object_index, o_swingweapon) or
			 object_is_ancestor(instance.object_index, o_swingobject))
			 {
				a_dir = point_direction(x,y,instance.x, instance.y - instance.z) -180;
				a_speed = 0.8 + instance.knockbackspeed/2;
			 }
			
		}
		else if(abs(z-instance.z) < 35 and instance.IsGrabbed = false)
		{
			if(IsLethal == true)
			{
				if(object_get_parent(instance.object_index) != 36 or
				object_get_parent(instance.object_index) != 35)
				{
					
					ShakeScreen((8 + (AdditionalScale * 7)));
					var ThrowAttack = instance_create(x,y-z,o_throwattack);
					with(ThrowAttack)
					{
						image_angle = other.dir;
						dmg = other.dmg;
						dir = point_direction(x,y,other.x,other.y) - 180;
						x+= lengthdir_x(20,dir);
						y+= lengthdir_y(20,dir);
					
					}
					dir = point_direction(x,y-z,instance.x, instance.y - instance.z) -180;
					_speed = 2;
					IsLethal = false;
				}
				
			}
			else
			{
				a_dir = point_direction(x,y,instance.x, instance.y - instance.z) -180;
				a_speed = 0.4 + instance.knockbackspeed/2;
			}
			
		}
		
	}
	PlayerObject = instance_place(x,y -z,o_player);
	if(instance_exists(PlayerObject))
	{	
		if!(IsLethal == true)
		{
			if!(z > 20)
			{
				dir = point_direction(x,y,o_player.x,o_player.y) - 180;
				_speed = 3.2;
			}
			
		}
	}
	
	if(instance_exists(o_throwattack))
	{
		throwattack = instance_place(x,y-z,o_throwattack);
	}
    
	if(instance_exists(throwattack))
	{
		
		
		if(damage < throwattack.dmg)
		{
			HP -=throwattack.dmg;
			/*if(instance_exists(instance))
			{
				a_dir = point_direction(x,y,instance.x,instance.y) -180;
			}
			else
			{
				a_dir = point_direction(x,y,throwattack.x,throwattack.y) - 180;
			}*/
			global.SM = 150;
			a_speed += 2;
			if(IsLethal == false)
			{
				z+=irandom_range(8,14);
			}
			ShakeScreen(4);
			if (alarm[6] == -1) 
			{
			    alarm[6] = 10;
			}
		}
		if (alarm[6] == -1) 
		{
			alarm[6] = 10;
		}
		damage += throwattack.dmg;
	}
	
	if(instance_exists(o_swingattack))
	{
		swingattack = instance_place(x,y-z,o_swingattack)
	}
	
	if(instance_exists(swingattack))
	{
		if(z < 30 and touching == true and damage < swingattack.dmg)
		{
			global.SM = 60;
			dir = point_direction(x,y-z,swingattack.x,swingattack.y) - 180;
			_speed += 4;
			z+=irandom_range(10,13);
			ShakeScreen(4);
			if (alarm[6] == -1) 
			{
			    alarm[6] = 7;
			}
			HP -=swingattack.dmg;
			//instance_create(x,y,o_explosion);
			
		}
		if (alarm[6] == -1) 
		{
		    alarm[6] = 7;
		}
		damage += swingattack.dmg
		touching = false;
		
	}
	else
	{
		touching = true;
	}
	slamattack = instance_place(x,y-z,o_slamattack);
	if(instance_exists(slamattack))
	{
		if(z < 30)
		{
			a_dir = point_direction(x,y-z,o_slamattack.x,o_slamattack.y) - 180;
			a_speed += 3;
			z+=irandom_range(12,17);
			ShakeScreen(4);
			if (alarm[7] == -1) 
			{
				alarm[7] = 3;
			}
			HP -=slamattack.dmg;
		}
	}
	
	
	
	
	//collision with solidobject
    Solid = instance_place(x,y-z,o_solid);
    if instance_exists(Solid)
    {
        //An early version of identifying objects name
        Name = object_get_name(Solid.object_index);
		_speed = 0;
        //speed = 0;
           //If it's a tree, treat the knockbackdirection like this
            if (Name == "o_tree")
            {
                //Tree is tall, therefore we need to identify the direction differently than other short objects
                //direction = point_direction(x,y,Solid.x, Solid.y + (Solid.sprite_height/3)) -180;
				dir = point_direction(x,y,Solid.x, Solid.y + (Solid.sprite_height/3)) -180;
            }
            else
            {
                //direction = point_direction(x,y,Solid.x, Solid.y) -180;
				dir = point_direction(x,y,Solid.x, Solid.y) -180;
            }
			_speed = 1 + Solid.knockbackspeed;

            

    }
}
//these are previous collisionchecks that were or are unnecassery

/*EnemyObject = instance_place(x,y-z,o_enemy);
    if (instance_exists(EnemyObject))
    {
        if (abs(EnemyObject.z - z) > 40)
        {
            //dont check further collision
        }
        else
        {
            if (IsLethal = true and EnemyObject.IsGrabbed = false)
            {   
                
            }
        }
    }*/
	
	
	/*if(instance_exists(o_potentialweapon))
	{
		hit_list = instance_place_list(x,y-z,o_potentialweapon);
	}
	//multiple collisions at once with potentialweapon children 
	if (hit_list != noone) {
	   var n = 0;
	   while (n < ds_list_size(hit_list)) {
	      var position = ds_list_find_value(hit_list, n);
		  if!(abs(position.z -z) > 40 and position.IsGrabbed = true)
		  {
			a_dir = point_direction(x,y,position.x, position.y - position.z) -180;
			a_speed = 0.2 + position.knockbackspeed/2;
			if(position.IsLethal == true)
			{
				with(position)
				{
					var ThrowAttack = instance_create(other.x, other.y  - other.z, o_throwattack);
					with(ThrowAttack)
					{
						image_angle = other.dir
					}
                
					dir = point_direction(x,y,other.x, other.y) -180;
					_speed = 2;
					IsLethal = false;
	
				}
			}
		  }
		  
	      n += 1;
	   }
	   
	   ds_list_destroy(hit_list);
	}*/