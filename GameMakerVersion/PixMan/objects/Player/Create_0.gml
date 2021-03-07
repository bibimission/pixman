/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

team = global.TEAM_ALLY;

walk_speed = 4;

inventory = ds_map_create();
ds_map_add(inventory, global.ITEM_TYPE_SHOE,pointer_null);
ds_map_add(inventory, global.ITEM_TYPE_CHEST,pointer_null);
ds_map_add(inventory, global.ITEM_TYPE_HAT,pointer_null);



life_points_max = 5;
life_points = life_points_max;

self.mainWeapon = instance_create_layer(x, y, "Weapons",Weapon);
self.mainWeapon.team = self.team;

