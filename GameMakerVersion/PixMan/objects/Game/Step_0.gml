/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(keyboard_check_pressed(vk_space)){
    paused = !paused;
}

if(keyboard_check_pressed(vk_anykey)){
	level_start = false;
}

if(paused || level_start){
	/*
	instance_deactivate_layer("Player");
	instance_deactivate_layer("Entities");
	instance_deactivate_layer("Bullets");
	*/
	instance_deactivate_all(1);
	
	blink_timer--;
	if(blink_timer<0){
		blink_timer = blink_timer_max;
	}
}else{
    instance_activate_all();
}
