/// @description TAKE EGG

if (!egg_taken) {
	
	// CHANGE SPRITE INDEX AND EGG NUMBER
	global.egg_sub += 1;
	
	with(other) {
		image_index = global.egg_sub;
	}
	
	// DINOSAUR RETURN HOME
	if (image_xscale > 0) {
		direction = 180+10;
	} else {
		direction = 0-10;
	}
	image_xscale *= -1;
	
	ds_list_delete(global.wave_order, 0);
	
	egg_taken = true;
}
