/// @description DRAW DINO AND WORD

// DRAW DINOSAUR
draw_self();

if (egg_taken) {
	var ex = (image_xscale > 0) ? 25 : -25;
	draw_sprite_ext(spr_egg, 0, x+ex, y-5, 3, 3, 0, c_white, 1);
	draw_self();
} else {
	draw_set_color(c_black);

	draw_set_font(fnt_words);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	// DRAW LETTERS IN CUBES
	var charnum = string_length(text);
	var lentotal = charnum*32;
	var lendiv = lentotal/2;
	
	for (var c = 0 ; c < charnum ; c++) {
		var char = string_copy(text, c+1, 1);
		var sx = x-lendiv+(32*c);
		var sy = y-60;
		var ssub = (ds_list_find_value(global.wave_order, 0) == id) ? 1 : 0;
		var salpha = (ds_list_find_value(global.wave_order, 0) == id) ? 1 : 0.7;
		var scol = (ds_list_find_value(global.wave_order, 0) == id) ? COL_ORANGE : c_black;
		
		draw_sprite_ext(spr_button_square, ssub, sx, sy, 1, 1, 0, c_white, salpha);
		draw_text_color(sx, sy+2, char, scol, scol, scol, scol, salpha);
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_set_color(c_white);
}
