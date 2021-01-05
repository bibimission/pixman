/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

team = global.TEAM_ALLY;

walk_speed = 4;

inventory = ds_list_create();

mainWeapon = instance_create_layer(x, y, "Weapons",Weapon);
