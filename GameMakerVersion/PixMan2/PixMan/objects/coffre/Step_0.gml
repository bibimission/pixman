/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/*if(oPlayer == pressDown or oPlayer == pressLeft or oPlayer == pressRight or oPlayer == pressUp){
	draw_sprite = coffreO;
}else{
	draw_sprite = coffreF;
}*/

pressEnter = keyboard_check(vk_enter);


if(pressEnter){
	if(!isOpen){
		
		object_set_sprite(coffre,coffreF)visible = false;
		object_set_sprite(coffre1,coffreO);
		show_debug_message("ouvert");
	
		
	}

}