/// @description DRAW THE BUTTON

var sub = 0;
var col = c_black;

if (enter) {
	sub = 1;
	col = COL_ORANGE;
}

draw_sprite_ext(sprite_index, sub, x, y, scale, scale, 0, c_white, 1);

draw_set_color(col);

draw_set_font(button_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);
