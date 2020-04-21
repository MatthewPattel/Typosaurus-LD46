/// @description DRAW STUFF

draw_set_color(c_black);

if (global.game_room == R_START) {
	draw_set_font(fnt_game);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(wd*6, hd*2, "TYPOSAURUS");
}

if (global.game_room == R_LEVEL) {
	draw_set_font(fnt_game_small);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(wd*0.5, hd*0.5, "SCORE: " + string(global.game_data[? G_SCORE]));
}

if (global.game_room == R_LOSER) {
	
	draw_set_font(fnt_game);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_sprite_ext(spr_button_square_big, 0, wd*6, hd*6, 3, 3, 0, c_white, 1);
	draw_text(wd*6, hd*5, "SCORE: " + string(global.game_data[? G_SCORE]));
	draw_text(wd*6, hd*7, "MAX: " + string(global.game_data[? G_TOPSCORE]));
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);
