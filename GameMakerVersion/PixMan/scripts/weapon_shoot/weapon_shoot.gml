// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function weapon_shoot_target(instance, target_x,target_y){
	var ldx = lengthdir_x(50, instance.image_angle);
	var ldy = lengthdir_y(50, instance.image_angle);
	
	
	bullet = instance_create_layer(instance.x+ldx, instance.y+ldy, "Bullets", Bullet);
	bullet.color = instance.color;
		
	blend_color(bullet);
		
	bulletDirection = point_direction(x,y,target_x,target_y);
	bullet.bulletSpeed = instance.bulletSpeed;
	bullet.team = self.team;
		
	bullet.hspeed = dcos(bulletDirection) * bullet.bulletSpeed;
	bullet.vspeed =  - dsin(bulletDirection) * bullet.bulletSpeed;
	bullet.owner = self.id;
	bullet.nb_bounces = 1;
		
	instance.cooldown = instance.cooldownMax;
	
}

function weapon_shoot(weapon_instance){
	var ldx = lengthdir_x(50, weapon_instance.image_angle);
	var ldy = lengthdir_y(50, weapon_instance.image_angle);
	
	bullet = instance_create_layer(weapon_instance.x+ldx, weapon_instance.y+ldy, "Bullets", Bullet);
	bullet.color = weapon_instance.color;
	blend_color(bullet);
	
	bulletDirection = weapon_instance.image_angle;
	bullet.bulletSpeed = weapon_instance.bulletSpeed;
	bullet.team = self.team;
		
	bullet.hspeed = dcos(bulletDirection) * bullet.bulletSpeed;
	bullet.vspeed =  - dsin(bulletDirection) * bullet.bulletSpeed;
	bullet.owner = self.id;
	bullet.nb_bounces = 0;
		
	weapon_instance.cooldown = weapon_instance.cooldownMax;
}