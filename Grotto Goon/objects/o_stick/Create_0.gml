/// @description Insert description here
// You can write your code in this editor

///States

enum stickstate
{
    Normal,
    Grabbed,
    SwingPrepare,
    Swung,
    Thrown

}

NormalState = stickstate.Normal;
GrabbedState = stickstate.Grabbed;
SwingPrepareState = stickstate.SwingPrepare;
SwungState = stickstate.Swung;
ThrownState = stickstate.Thrown;

current_state = NormalState;
IsGrabbed = false;
IsLethal = false;

dmg = 20;
visible = true;
_speed = 0;
_speed = clamp(_speed,0,50);
dir = 0;
///Starting Variables
randomize();
zspeed = 0;
z=0;
knockbackspeed = 2;
//its base color
ColorType = -1;
//a color for when it's ready to be picked up
MergeColor = merge_color(c_white, c_black, 0.6);
//choosing base color when created
Color = ColorType;
//Blinking variable
Blinking = false;
//declaring variable for the direction of where the stick is suppose to point
dir = point_direction(x,y,mouse_x,mouse_y);
//Wear and tear, not in use yet
Wear = 5;
//what angle that it's at
Angle = -100;
//x and yoffsets for weapon behaviour, CANT USE IT AS FUCKING VARs RIGHT NOW...PISS ON IT!!!
xoffset = lengthdir_x(36, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);
yoffset = lengthdir_y(40, point_direction(o_player.x, o_player.y, mouse_x,mouse_y)+Angle);

//Angle change when swung
Change = 1;
//if it's
Bend = true;

//Cause Syntax is sometimes merciful but at other times just odd
SwingAttack = noone;


xoff =0;
yoff =0;
cdir =0;

//useless right now, but it was meant for when the stick was swung where it would still change 
//its angle because its image angle is always calculated by 
xm = 0;
ym = 0;
swinging = false;
playerx = o_player.x;
playery = o_player.y;
