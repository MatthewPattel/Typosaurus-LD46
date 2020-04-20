/// @description control_start_step()

// PLAY BUTTON
if (butPlay.selected) {
	// SET GAME ACCORDING DIFFICULTY
	switch(global.wave_difficulty) {
		case D_BEGINEER:
			global.egg_sub = 1;
			global.wave_speed = 0.5;
			global.wave_sec = 4;
		break;
		case D_APPRENTICE:
			global.egg_sub = 2;
			global.wave_speed = 1;
			global.wave_sec = 4;
		break;
		case D_MASTER:
			global.egg_sub = 3;
			global.wave_speed = 2;
			global.wave_sec = 3;
		break;
		case D_HARDCORE:
			global.egg_sub = 4;
			global.wave_speed = 2.5;
			global.wave_sec = 2;
		break;
		}
	
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
}

if (butExit.selected) {
	game_end();
}
