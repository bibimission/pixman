/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();
blend_color(self);


if(life_points <= life_points_max/2){
	color = second_color;
}


if(cooldown > 0){
	cooldown --;
}

// Tir
var rotation_speed = 10;

if( collision_circle( x, y, 400, Player, false, false )){
	
	var _targets = ds_list_create();
	var count = collision_circle_list(x,y,400,Player,false,false,_targets,false);
	
	if(count>0){
		var _selectedTarget = _targets[| 0];
		var pd = point_direction(mainWeapon.x, mainWeapon.y, _selectedTarget.x, _selectedTarget.y);
		var dd = angle_difference(mainWeapon.image_angle, pd);
		mainWeapon.image_angle -= min(abs(dd), rotation_speed) * sign(dd);
		if(cooldown == 0){
			weapon_shoot(self.mainWeapon, _selectedTarget.x, _selectedTarget.y);
			cooldown = cooldownMax;
		}
	}
}