/// @description Insert description here
// You can write your code in this editor
Bat = instance_create(x,y,o_bat_mp);

with(Bat)
{
    AdditionalScale = other.AdditionalScale;
    z = other.z;
    Color = other.ColorType;
}
instance_destroy();