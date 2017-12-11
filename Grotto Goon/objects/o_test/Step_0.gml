/// @description Insert description here
// You can write your code in this editor
  _speed = 1;

if(keyboard_check(ord("W")))
{
	y-=_speed;
}
if(keyboard_check(ord("S")))
{
	y+=_speed;
}
if(keyboard_check(ord("A")))
{
	x-=_speed;
}
if(keyboard_check(ord("D")))
{
	x+=_speed;
}
