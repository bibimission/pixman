/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

killable = false;

self.weapon = instance_create_layer(x,y, "Entities", Weapon);

self.weapon.visible = false;
self.weapon.cooldownMax = 1;


