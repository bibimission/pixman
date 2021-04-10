/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

team = global.TEAM_ALLY;

self.mainWeapon = instance_create_layer(x, y, "Weapons",Weapon);
self.mainWeapon.team = self.team;

