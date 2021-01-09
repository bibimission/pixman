/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blend_color(self);


var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(!activated){
			if(bulletsTaken[| index].color == self.color){
				activated = true;
				var found = false;
				var i = 0;
				while(!found && i< instance_number(Door)){
					var door = instance_find(Door, i);
					if(door != noone){
						if(door.identity == self.identity){
							found = true;
							door.closed = !door.closed;
						}
					}
					i++;
				}
			}
		}
		instance_destroy(bulletsTaken[| index]);
	}
}
