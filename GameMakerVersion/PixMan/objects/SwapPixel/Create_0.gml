/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

self.mainWeapon = instance_create_layer(self.x, self.y, "Weapons",Weapon);
self.mainWeapon.team = self.team;