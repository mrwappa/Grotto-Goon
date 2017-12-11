/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5;
image_yscale = 1.5;

button = noone;
create_object = o_ball;

color = c_white;
text = "Objects";

text_width = string_width(text);
text_height = string_height(text);
text_color = c_white;

//
movingenemy = o_movingenemy;
//
ball = o_ball;
//
stick = o_stick;
//
tree = o_tree;

pressed = false;

object_list =  ds_list_create();
ds_list_add(object_list,ball,tree,stick,movingenemy);

list_size = ds_list_size(object_list);

yposition = 0;

stoploop = true;

/*enum spam
{
	spamming,
	not_spamming
}

spam_state = spam.not_spamming;







