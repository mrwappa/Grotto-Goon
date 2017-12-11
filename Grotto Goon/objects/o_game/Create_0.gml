/// @description Insert description here
// You can write your code in this editor
randomize();
cursor_sprite = s_cursor;
window_set_cursor(cr_none);

global.SM = 1;
mouse = instance_create(x,y,o_mouse);

//makes sure that only one "X-Ray" shadow of the player can be displayed on a solid object
Balls = 0;//this does not work right now

length = 0;

_dir = 0;
dirlength = 0;

TOGGLE_PAUSE = 0;
paused_ = false;
pause_sprite_ = noone;

