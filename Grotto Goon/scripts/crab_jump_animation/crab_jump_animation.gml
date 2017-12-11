


if(ascending = true)
{
	speedz = lerp(speedz,5,0.18);
	
}
else
{ 
	speedz = lerp(speedz,-5,0.07);
	
}

if(z <= 25)
{
	ascending = false;
}

if(z <= 10)
{
	ascending = true;
	
	
	
}
if(z > 9 )
{
	turning = true;
} 


z += speedz/global.SM;
z = clamp(z,8,25);

if(z < monitorz )
{
	lowz = monitorz;
}

monitorz = z;

count = 0;
