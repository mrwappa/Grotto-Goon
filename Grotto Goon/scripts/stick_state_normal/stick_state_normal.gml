///State Normal
if (current_state = NormalState)
{
    

	//image_angle = 0;

	
	//Too make sure that the player can't grab you instantly again
    if (alarm[3] == -1) 
    {
        alarm[3] = 8;
    }
	
	if(_speed <= 0.3 and global.SM ==1)
	{
		IsLethal = false;
		
	}
	
	if(IsLethal = false or _speed <= 0.3)
	{	
		if(global.SM == 1)
		{
			image_angle = lerp(image_angle,0, 0.5);
		}
	}
	
    zspeed -= 0.2/global.SM;
    if ((z + zspeed) < 0)
    {
        while(z + sign(zspeed) > 0)
        {
            z += sign(zspeed);
        }
        if (abs(zspeed) > 1.5)
        {
            zspeed *= -0.4/global.SM;
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
	_speed = lerp(_speed,0,0.08/global.SM)
    //speed = lerp(speed,0,0.08);
	PlayerObject = instance_place(x,y-z,o_player);
	if(instance_exists(PlayerObject))
	{	
		if!(IsLethal == true)
		{
			dir = point_direction(x,y-z,o_player.x,o_player.y) - 180;
			_speed += knockbackspeed;
			_speed = 2 + o_player.knockbackspeed;
		}
	}
	
	
	EnemyObject = instance_place(x,y,o_enemy);
	if (instance_exists(EnemyObject))
    {
        if(abs(z-EnemyObject.z) < 30)
		{
			if (IsLethal = true and EnemyObject.IsGrabbed = false)
	        {   
				dir = point_direction(x,y-z,EnemyObject.x, EnemyObject.y - EnemyObject.z) - 180;
				_speed = 9;
	            var ThrowAttack = instance_create(EnemyObject.x, EnemyObject.y -EnemyObject.z, o_throwattack);
	            with(ThrowAttack)
	            {
	                image_angle = other.dir;
					dmg = other.dmg;
	            }
				ShakeScreen(15);
				
	            IsLethal = false;
	        } 
		}
            
        
    }
	
	
	if(instance_exists(o_potentialweapon))
	{
		instance = instance_place(x,y-z,o_potentialweapon);
	}
	if(instance_exists(instance))
	{
		if(abs(z-instance.z) < 3 and !instance.IsGrabbed = true)
		  {
			
			if(instance.IsLethal == false)
			{
				dir = point_direction(x,y,instance.x, instance.y - instance.z) -180;
				_speed = 0.1 + instance.knockbackspeed/4;
			}
		  }
	}
	

	//collision with solidobject
    Solid = instance_place(x,y-z - 15,o_solid);
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
				dir = point_direction(x,y,Solid.x, Solid.y + (Solid.sprite_height/1.8)) -180;
            }
            else
            {
                //direction = point_direction(x,y,Solid.x, Solid.y) -180;
				dir = point_direction(x,y,Solid.x, Solid.y) -180;
            }
			_speed = 1 + Solid.knockbackspeed;
            //speed = 1 + Solid.knockbackspeed;

    }
    image_xscale = 0.9;
    image_yscale = 1;
}
else
{
    image_xscale = 1.1;
    image_yscale = 1.3;
}

//im a lazy piece of shit and can't take it anymore when I realize that this bloody
	//fucking swingattack has a mind of its own and won't FUCKING get destroyed then
	//I APPARENTLY just have to do it manually...fuck this thing forcing me to do 
	//horrendous code into abyssmal code.
	/*if (instance_exists(o_swingattack))
    {
		with(o_potentialweapon)
		{
			damage = 0;
		}
        with(o_swingattack)
        {
            instance_destroy();
			
        }
    }*/