/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var rotation_speed = 10;

if(cooldown > 0){
	cooldown --;
}

if(mouse_check_button(mb_left) && cooldown == 0){
	
	var ldx = lengthdir_x(50, image_angle);
	var ldy = lengthdir_y(50, image_angle);
	
	if(self.color != global.COLOR_NONE){
		bullet = instance_create_layer(x+ldx, y+ldy, "Bullets", Bullet);
		bullet.color = self.color;
		
		blend_color(bullet);
		
		bulletDirection = point_direction(x,y,mouse_x,mouse_y);
		bullet.bulletSpeed = self.bulletSpeed;
		
		bullet.hspeed = dcos(bulletDirection) * bullet.bulletSpeed;
		bullet.vspeed =  - dsin(bulletDirection) * bullet.bulletSpeed;
		bullet.nb_bounces = 1;
		
		cooldown = cooldownMax;
	}
}

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), rotation_speed) * sign(dd);

blend_color(self);