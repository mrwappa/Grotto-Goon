/// @description Insert description here
// You can write your code in this editor
randomize();
retracting = choose(true,false);
double = choose(true,false);
lines = irandom_range(4,10);

_x = irandom_range(-50,50);
_y = irandom_range(-50,50);

length = 0;
length_speed = random_range(0.2,0.5);

maxlength = irandom_range(10,50);
retract_speed = random_range(0.15,0.3);

retract = 0;

/*if(double = true)
length_speed = random_range(0.2,0.5)*2;
retract_speed = random_range(0.15,0.3)*2;*/

//pointx = point_direction(x,y,x+ irandom_range(20,40),y+ irandom_range(20,40));
//pointy = point_direction(x,y,x + irandom_range(20,40),y+ irandom_range(20,40));
pointx = point_direction(x+irandom_range(20,40),y,x+irandom_range(20,40),y);
pointy = point_direction(x,y+irandom_range(20,40),x,y+irandom_range(20,40));
//color = choose(c_red,c_blue,c_green,c_white,c_gray,c_purple)
color = c_white;

alarm[0] = 120;