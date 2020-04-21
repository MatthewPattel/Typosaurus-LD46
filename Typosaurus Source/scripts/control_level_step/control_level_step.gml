/// @description control_level_step()

if (butExit.selected) {
	game_save_data();
	
	ds_list_clear(global.wave_order);
	
	global.game_room = R_START;
	room_goto(rom_start);
}

if (global.egg_sub > 4) {
	game_save_data();
			
	screen_save(s_screenroute);
			
	global.game_room = R_LOSER;
	room_goto(rom_loser);
}

if (global.wave_difficulty < D_HARDCORE) {
	if (difficulty_rise) {
		if (global.game_data[? G_SCORE] > difficulty_goal) {
		
			alarm[1] = room_speed*irandom_range(1, 5);
			difficulty_goal += irandom_range(10, 15);
			difficulty_rise = false;
		}
	}
}
