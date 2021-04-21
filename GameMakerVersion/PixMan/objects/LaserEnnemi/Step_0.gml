/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blink_timer --;

if(blink_timer <= 0){
	shooting = !shooting;
	blink_timer = blink_timer_max;
}

if(shooting){
	weapon_shoot(self.weapon);
}