/// @description SAVE GAME

// SAVE GAME AND DESTROY DATA
game_save_data();

ds_map_destroy(global.game_data);
ds_list_destroy(global.list_words);
ds_list_destroy(global.wave_order);
