/// @description Insert description here
// You can write your code in this editor
depth =o_player.depth -2;

dir+=_speed/global.SM;
x = o_arm_2.x + lengthdir_x(length,dir)-3;
y = o_arm_2.y + lengthdir_y(length,dir)-1;
hspeed = o_arm_2.hspeed;
vspeed = o_arm_2.vspeed;
image_angle = o_arm_2.image_angle;

if(keyboard_check(vk_space))
{
	_speed += 3/global.SM;
}
else
{
	_speed -=0.2;
}

_speed = clamp(_speed,0,200);