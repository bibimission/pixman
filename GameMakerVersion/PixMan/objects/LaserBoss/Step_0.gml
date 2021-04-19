/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

for(var i = 0; i < ds_list_size(self.lasers); i++){
	if(i < active_laser_count){
		weapon_shoot(self.lasers[| i]);
	}
	self.lasers[| i].image_angle += rotation_speed;
}