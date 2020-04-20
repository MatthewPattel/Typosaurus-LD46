if keyboard_check_released(vk_f10) {
    game_restart();
}
if keyboard_check_released(vk_escape) {
    game_end();
}
if keyboard_check_released(vk_f11) {
    window_set_fullscreen(!window_get_fullscreen());
}
