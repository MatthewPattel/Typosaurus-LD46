/// @description control_level_step()

if (butExit.selected) {
	game_save_data();
	
	global.game_room = R_START;
	room_goto(rom_start);
}

if (global.egg_sub > 4) {
	game_save_data();
			
	screen_save(s_screenroute);
			
	global.game_room = R_LOSER;
	room_goto(rom_loser);
}
