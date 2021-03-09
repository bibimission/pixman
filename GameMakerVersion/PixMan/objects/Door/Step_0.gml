/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet édite
if(keyboard_check(vk_enter) && collision_circle( x, y, 100, Player, false, false )){
	closed = false;
}

if(!closed){
	instance_destroy(self);
}

