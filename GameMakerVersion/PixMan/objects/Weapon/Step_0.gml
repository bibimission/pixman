/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var rotation_speed = 10;

if(cooldown > 0){
	cooldown --;
}

if(mouse_check_button(mb_left) && cooldown == 0){
	
	var ldx = lengthdir_x(0, mouse_x);
	var ldy = lengthdir_y(0, mouse_y);
	
	if(self.color != global.COLOR_NONE){
		bullet = instance_create_layer(x+ldx, y+ldy, "Bullets", Bullet);
		bullet.color = self.color;
		
		blend_color(bullet);
		
		bullet.bulletDirection = point_direction(x,y,mouse_x,mouse_y);
		cooldown = cooldownMax;
	}
}

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), rotation_speed) * sign(dd);