/// @description Insert description here
// You can write your code in this editor
var numberoflines = irandom_range(5,12);
for (i=0; i<numberoflines; i++)
{	
	var lengthadd = irandom_range(7,15);
	length += lengthadd;
		
	var newline = instance_create(line.x,line.y + length,o_line_effect);
		
}
length = 0;