/// @description CHECK KEYBOARD

depth = ds_list_find_index(global.wave_order, id);

//var letter = keyboard_key;
if (!egg_taken) {
	if (ds_list_find_value(global.wave_order, 0) == id) {
		letter = string_copy(text, 1, 1);

		if (letter == string_upper(string(keyboard_lastchar))) {
			text = string_delete(text, 1, 1);
			keyboard_lastchar = "";
		}

		if (string_length(text) == 0) {
			global.game_data[? G_SCORE] += 1;
			ds_list_delete(global.wave_order, 0);
			instance_destroy();
		}
	}
}
