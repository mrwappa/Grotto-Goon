/// @description Insert description here
// You can write your code in this editor
depth= -y;

if(retracting == 1)
{
	length = lerp(length,maxlength,length_speed/global.SM);
	if(length > maxlength * 0.97)	
	{
		re_length = lerp(re_length,-maxlength, retract_speed/global.SM);
	}
}
else if(retracting == 0)
{
	re_length = lerp(re_length,maxlength, retract_speed/global.SM);
	
	if(re_length > maxlength * 0.97)	
	{
		length = lerp(length,-maxlength,length_speed/global.SM);
	}
	/*length = lerp(length,maxlength,length_speed/global.SM);
	if(length > maxlength * 0.97)	
	{
		re_length = lerp(re_length,-maxlength, retract_speed/global.SM);
	}*/
}

if(re_length == maxlength and length = maxlength)
{
	instance_destroy();
}