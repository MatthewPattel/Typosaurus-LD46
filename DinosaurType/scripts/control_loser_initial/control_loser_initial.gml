/// @description control_loser_initial()

// EXIT BUTTON
butExit = instance_create_layer(wd*11.5, hd*1, "Instances", obj_button_square);
with (butExit) {
	text = "X";
	scale = 2;
	button_font = fnt_game_small;
	image_xscale = scale;
	image_yscale = scale;
}

var lay_id = layer_get_id("Background");
var bglayer = layer_background_get_id(lay_id)
var bgsprite = sprite_add(s_screenroute, 1, true, false, 0, 0);

layer_background_sprite(bglayer, bgsprite);
layer_background_stretch(bglayer, true);
