/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

self.mainWeapon = instance_create_layer(self.x, self.y, "EnemyWeapons",Weapon);
self.mainWeapon.bulletSpeed = 10;
self.mainWeapon.team = self.team;