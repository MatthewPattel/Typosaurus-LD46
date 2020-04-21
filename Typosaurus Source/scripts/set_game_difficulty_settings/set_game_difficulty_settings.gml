/// @description set_game_difficulty_settings()
/// @param update

var update = false;

if(argument_count > 1){
    update = argument[1];
}

switch(global.wave_difficulty) {
	case D_BEGINEER:
		if (!update) global.egg_sub = 1;
		global.wave_speed = 0.5;
		global.wave_image_speed = 1;
		global.wave_sec = 4;
	break;
	case D_APPRENTICE:
		if (!update) global.egg_sub = 2;
		global.wave_speed = 1;
		global.wave_image_speed = 1.5;
		global.wave_sec = 4;
	break;
	case D_MASTER:
		if (!update) global.egg_sub = 3;
		global.wave_speed = 1.5;
		global.wave_image_speed = 2;
		global.wave_sec = 3;
	break;
	case D_HARDCORE:
		if (!update) global.egg_sub = 4;
		global.wave_speed = 2;
		global.wave_image_speed = 2.5;
		global.wave_sec = 2;
	break;
}