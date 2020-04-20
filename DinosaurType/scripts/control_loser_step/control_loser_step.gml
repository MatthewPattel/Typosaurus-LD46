/// @description control_loser_step()

if (butExit.selected) {
	game_save_data();
	
	global.game_room = R_START;
	room_goto(rom_start);
}
