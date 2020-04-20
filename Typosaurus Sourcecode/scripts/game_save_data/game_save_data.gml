/// @description game_save_data();

if (global.game_data[? G_SCORE] > global.game_data[? G_TOPSCORE]) {
	global.game_data[? G_TOPSCORE] = global.game_data[? G_SCORE];
}

var game_map = ds_map_create();
var game_list = ds_list_create();

var map = ds_map_create();
ds_list_add(game_list, map);
ds_list_mark_as_map(game_list, ds_list_size(game_list)-1);
	
ds_map_add(map, G_TOPSCORE, global.game_data[? G_TOPSCORE]);
ds_map_add(map, G_SCORE, global.game_data[? G_SCORE]);

// Wrap the list inside a map
ds_map_add_list(game_map, "ROOT", game_list);

// Save onto a string
var json_string = json_encode(game_map);
save_string_to_file(s_saveroute, json_string);
	
show_debug_message("TOPSCORE SAVED");
