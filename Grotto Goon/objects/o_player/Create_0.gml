/// @description Startvalues,Keybinding, Movement variables, States


/*instance_create(x,y,o_fidget_pixel);
fidget1 = instance_create(x,y,o_fidget_pixel);
with(fidget1)
{
	dir = 120;
}
fidget2 = instance_create(x,y,o_fidget_pixel);
with(fidget2)
{
	dir = 240;
}*/
image_angle = 0;


//z axis, doesnt change as of now
z = 0;
//knockbackspeed for other objects that touch the player

angle_image = 0;

//assigning weapons that don't exist yet
GrabbableObject = noone;
WieldingObject = noone;

///keybindings
key_up = ord("W");
key_down = ord("S");
key_left = ord("A");
key_right = ord("D");

key_up_alt = noone;
key_down_alt = noone;
key_left_alt = noone;
key_right_alt = noone;

///fake speed for slammable object when grabbed
fake_speed = 220/room_speed;
fake_hspeed = 0;
fake_vspeed = 0;


///movement variables
movement_speed = 5;
//not sure im using faceing angle
facing_angle = 0;

//axes(vectors i think)
axis_x = 0;
axis_y = 0;

axis_x_max = movement_speed;
axis_y_max = movement_speed;

axis_x_acceleration = 2; //.5
axis_y_acceleration = 2; //.5

axis_x_restitution = .35; //.6
axis_y_restitution = .35;//.6

angle_plus = true;
angle_minus = false;
knockbackspeed = movement_speed/1.5;
//scale
image_xscale = 0.8;
image_yscale = 0.8;

roll_direction = 0;  
roll_timer = 0; 



//States
enum state
{
    Normal,
    Grabbing,
    Slamming,
    Throwing,
    Wielding,
	Dodging
}

NormalState = state.Normal;
GrabbingState = state.Grabbing;
SlammingState = state.Slamming;
ThrowingState = state.Throwing;
WieldingState = state.Wielding;
DodgingState = state.Dodging;
 
current_state = state.Normal;

previous_state = state.Normal;

CanSwing = true;
instance_create_depth(x,y,-y,o_arm_2);
instance_create_depth(x,y,-y,o_arm_1);

