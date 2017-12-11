/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_player.WieldingObject)
{
    Angle = o_player.WieldingObject.Angle;
    xoffset = lengthdir_x(58, point_direction(o_player.WieldingObject.playerx, o_player.WieldingObject.playery, o_player.WieldingObject.xm,o_player.WieldingObject.ym)+Angle);
    yoffset = lengthdir_y(45, point_direction(o_player.WieldingObject.playerx, o_player.WieldingObject.playery, o_player.WieldingObject.xm,o_player.WieldingObject.ym)+Angle);
    
    x = o_player.x + xoffset;
    y = o_player.y + yoffset;
    image_angle = o_player.WieldingObject.image_angle;
}
else
{
	with(o_potentialweapon)
	{
		damage = 0;
	}
    instance_destroy();
}