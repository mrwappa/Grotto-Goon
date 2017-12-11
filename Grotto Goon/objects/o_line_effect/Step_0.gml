/// @description Insert description here
// You can write your code in this editor
depth= -y;


if(retracting = true)
{	
	length = lerp(length,maxlength,length_speed/global.SM);
	if(length > maxlength*0.99)
	{
		retract = lerp(retract,maxlength,retract_speed/global.SM);
		/*if(double == true and retract > maxlength*0.98)
		{
			length = 0;
			retract = 0;
			double = false;
		}*/
	}
}
else
{
	/**retract = lerp(retract,maxlength,retract_speed/global.SM);
	if(retract > maxlength*0.99)
	{
		length = lerp(length,maxlength,length_speed/global.SM);
	}*/
	length = lerp(length,maxlength,length_speed/global.SM);
	if(length > maxlength*0.99)
	{
		retract = lerp(retract,maxlength,retract_speed/global.SM);
	}
}


