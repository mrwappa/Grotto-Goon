/// @description Insert description here
// You can write your code in this editor
randomize();

retracting = choose(1,0);

dir= 0;
re_dir = dir - 180;


length = 0;
re_length = 0;
if(retracting == true)
{
	length_speed = random_range(0.2,0.65);//0.17,0.6
	retract_speed = random_range(0.12,0.5);//0.09,0.4
}
else
{
	length_speed = random_range(0.2,0.65)*1.5;
	retract_speed = random_range(0.12,0.5)*1.5;
}
maxlength = irandom_range(50,100);//12,18 <



retract = 0;


//color = choose(c_red,c_blue,c_green,c_white,c_gray,c_purple)
color = c_white;

alarm[0] = 160;