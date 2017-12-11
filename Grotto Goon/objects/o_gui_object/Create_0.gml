/// @description Insert description here




color = c_white;

display_scale = display_get_gui_width()/view_w;

gui_mouse_x = (mouse_x-(view_x))*display_scale;
gui_mouse_y = (mouse_y-(view_y))*display_scale;

image_xscale = 2;
image_yscale = 2;

button = noone;
create_object = o_ball;

color = c_white;
text = "Objects";

text_width = string_width(text);
text_height = string_height(text);
text_color = c_white;

///
object_list =  ds_list_create();
//ball
ball = o_ball;
ds_list_add(object_list,ball);

//stick
stick = o_stick;
ds_list_add(object_list,stick);

//tree
tree = o_tree;
ds_list_add(object_list,tree);

//movingenemy
movingenemy = o_movingenemy;
ds_list_add(object_list,movingenemy);

//movetest
movetest = o_movetest;
ds_list_add(object_list,movetest);

//explosion
explosion = o_explosion;
with(explosion)
{
	sprite_index = s_explosion_1;
}
ds_list_add(object_list,explosion);


pressed = false;




list_size = ds_list_size(object_list);

yposition = 0;

stoploop = true;

enum spam
{
	spamming,
	not_spamming
}

spam_state = spam.not_spamming;