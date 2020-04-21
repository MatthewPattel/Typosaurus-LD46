/// @description set_globals

global.game_room = R_START;

global.game_data = ds_map_create();
global.game_data[? G_SCORE] = 0;
global.game_data[? G_TOPSCORE] = 0;

global.list_words = ds_list_create();
set_list_words(global.list_words);

global.egg_sub = 1;

global.wave_sec = 3;
global.wave_difficulty = D_BEGINEER;
global.wave_speed = 0;
global.wave_image_speed = 0;
global.wave_order = ds_list_create();
