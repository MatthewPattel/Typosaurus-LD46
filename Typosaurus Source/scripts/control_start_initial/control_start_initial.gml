/// @description control_start_initial()

if (file_exists(s_saveroute)) {
	
	// LOAD PREVIOUS GAME SCORES
	var game_map = ds_map_create();
	var game_list = ds_list_create();
	
	var game_map = load_json_from_file(s_saveroute);
	var game_list = game_map[? "ROOT"];
	
	var map = game_list[| 0];
	global.game_data[? G_TOPSCORE] = map[? G_TOPSCORE];
	global.game_data[? G_SCORE] = map[? G_SCORE];
}

// GREATE BUTTON TO PLAY
butPlay = instance_create_layer(wd*6, hd*5, "Instances", obj_button_rectangle);
with (butPlay) {
	text = "PLAY";
	scale = 2;
	button_font = fnt_game_small;
	image_xscale = scale;
	image_yscale = scale;
}

butDiff = instance_create_layer(wd*6, hd*7, "Instances", obj_button_rectangle);
with (butDiff) {
	text = other.string_difficulty[global.wave_difficulty]
	scale = 2;
	button_font = fnt_game_small;
	image_xscale = scale;
	image_yscale = scale;
}

butExit = instance_create_layer(wd*6, hd*9, "Instances", obj_button_rectangle);
with (butExit) {
	text = "EXIT";
	scale = 2;
	button_font = fnt_game_small;
	image_xscale = scale;
	image_yscale = scale;
}

set_game_difficulty_settings();

egg = instance_create_layer(wd*6, hd*10, "Instances", obj_egg);
