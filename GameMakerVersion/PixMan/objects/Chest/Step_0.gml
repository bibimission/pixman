/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(keyboard_check(vk_enter) && collision_circle( x, y, 100, Player, false, false )){
	if(!isOpen){
		sprite_index = chestOpen;
		isOpen = true;
	}
}