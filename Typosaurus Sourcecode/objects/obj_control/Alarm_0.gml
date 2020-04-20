/// @description GENERATE DINOSAUR

if (global.game_room == R_LEVEL) {
	
	randomize();
	
	// CREATE APPARENTLY RANDOM PLACED DINOSAUR
	var side = choose(S_RIGHT, S_LEFT);
	var area = S_DOWN; //choose(S_UP, S_DOWN);

	var xdino = (side == S_RIGHT)  ? (room_width+(wd*1)) : (0-(wd*1));
	var ydino = (area == S_UP) ? (hd*3) : (hd*9);

	var xscale = (side == S_RIGHT)  ? -3 : 3;
	var dir = (side == S_RIGHT)  ? 180 : 0;
	
	// SHUFFLE THE WORD LIST
	ds_list_shuffle(global.list_words);
	
	var dino = instance_create_layer(xdino, ydino, "Instances", obj_dinosaur);
	with(dino) {
		image_xscale = xscale;
		direction = dir;
		text = global.list_words[| 0];
	}
	ds_list_add(global.wave_order, dino);
	
	alarm[0] = room_speed*global.wave_sec;
}
