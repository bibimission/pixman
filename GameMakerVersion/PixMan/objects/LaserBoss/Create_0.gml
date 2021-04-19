/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

self.lasers = ds_list_create();

var angle = 0;

for(var i =0; i < 4; i++){

	var newLaser = instance_create_layer(self.x, self.y, "EnemyWeapons",Weapon);
	newLaser.bulletSpeed = 30;
	newLaser.team = self.team;
	newLaser.image_angle = angle;
	newLaser.cooldownMax = 0;
	angle += 90;
	ds_list_add(self.lasers, newLaser);
}

active_laser_count = 4;