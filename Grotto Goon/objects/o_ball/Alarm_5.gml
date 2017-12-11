/// @description Insert description here
// You can write your code in this editor
with(position)
{
	var ThrowAttack = instance_create(EnemyObject.x, EnemyObject.y  - EnemyObject.z, o_throwattack);
	with(ThrowAttack)
	{
	    image_angle = other.dir;
	}
                
	dir = point_direction(x,y,EnemyObject.x, EnemyObject.y) -180;
	_speed = 2;
	IsLethal = false;
	
}