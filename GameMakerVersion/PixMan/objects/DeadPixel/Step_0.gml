/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blend_color(self);

var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(bulletsTaken[| index].color == self.color){
			instance_destroy(self);
			
		}
		instance_destroy(bulletsTaken[| index]);
	}
}
