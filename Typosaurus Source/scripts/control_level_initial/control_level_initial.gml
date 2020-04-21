/// @description control_level_initial()

// EXIT BUTTON
butExit = instance_create_layer(wd*11.5, hd*1, "Instances", obj_button_square);
with (butExit) {
	text = "X";
	scale = 2;
	button_font = fnt_game_small;
	image_xscale = scale;
	image_yscale = scale;
}

// INITIALIZE LEVEL
global.game_data[? G_SCORE] = 0;

instance_create_layer(wd*6, hd*10, "Instances", obj_egg);

alarm[0] = room_speed*1;
