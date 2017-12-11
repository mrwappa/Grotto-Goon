/// @description Insert description here
// You can write your code in this editor
///Speed,color and hp variables

o_game.Balls +=1;
randomize();

tear = 10;
damage = 0;
zspeed = 0;
//z value at which it spawns at
z = irandom_range(40,180);

_speed = irandom_range(0,8);
_speed = clamp(_speed,0,50);
dir = random(360);

a_speed = 0;
a_speed = clamp(a_speed,0,50);
a_dir = 0;

s_speed = 0;
_x = 0;
_y = 0;

//the "dynamic" knockback system variable that makes the knockback seem "not fake"
knockbackspeed = 0;
//its base color
ColorType = choose(c_blue,c_purple,c_black,c_red);
//a color for when it's ready to be picked up
MergeColor = merge_color(ColorType, c_dkgray, 0.6);
//choosing base color when created
Color = ColorType;
//Blinking variable
Blinking = false;
//deciding how big it should be in the beginning
AdditionalScale = choose(0,0.1,0.3,0.5,0.7,0.9,1);

dmg = 20 + AdditionalScale * 10;

//declaring variable for the direction of where the ball is suppose to be slammed
//dir = point_direction(x,y,mouse_x,mouse_y);
//HP
HP = 100;
//sum shit about touching a swingattack
touching = true;

///States

enum ballstate
{
    Normal,
    Grabbed,
    Slammed,
    Slamprepare,
    ReturnSlam,
    Thrown
}
/*This is suppose to be a universal way to check any objects state 
from another object so make sure it is always there for all objects associated with grabbing
and so forth.
*/
NormalState = ballstate.Normal;
GrabbedState = ballstate.Grabbed;
SlammedState = ballstate.Slammed;
ThrownState = ballstate.Thrown;
ReturnSlamState = ballstate.ReturnSlam;
SlamprepareState = ballstate.Slamprepare;

current_state = NormalState;
IsGrabbed = false;
IsLethal = false;



throwattack = noone;
swingattack = noone;

instance = noone;