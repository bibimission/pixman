/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

team = global.TEAM_ALLY;

walk_speed = 4;

inventory = ds_list_create();

life_points = 20;
life_points_max = life_points;
//life_points += 12;
lifeHero_with = 297;
lifeHero_height = 21;

/*life_points_max = 5;
life_points = life_points_max;*/

mainWeapon = instance_create_layer(x, y, "Weapons",Weapon);
mainWeapon.team = self.team;
