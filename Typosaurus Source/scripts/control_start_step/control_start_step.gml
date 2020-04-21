/// @description control_start_step()

// PLAY BUTTON
if (butPlay.selected) {
	// SET GAME ACCORDING DIFFICULTY
	set_game_difficulty_settings();
	ds_list_clear(global.wave_order);
	
	global.game_room = R_LEVEL;
	room_goto(rom_level);
}

if (butDiff.selected) {
	global.wave_difficulty += 1;
	if (global.wave_difficulty > D_HARDCORE) global.wave_difficulty = D_BEGINEER;
	with(butDiff) {
		text = other.string_difficulty[global.wave_difficulty]
		selected = false;
	}
	
	set_game_difficulty_settings();
	egg.image_index = global.egg_sub;
}

if (butExit.selected) {
	game_end();
}
