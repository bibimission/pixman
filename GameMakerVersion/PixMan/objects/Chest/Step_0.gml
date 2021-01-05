/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(keyboard_check(vk_enter) && place_meeting(x, y, oPlayer)){
	if(!isOpen){
		sprite_index = chestOpen;
		isOpen = true;
	}
}