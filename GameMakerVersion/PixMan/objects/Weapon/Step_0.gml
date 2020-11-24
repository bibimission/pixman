/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var rotation_speed = 10;

if(mouse_check_button(mb_left)){
	show_debug_message("Boum !");
	
	var ldx = lengthdir_x(15, mouse_x);
	var ldy = lengthdir_y(15, mouse_y);
	bullet = instance_create_layer(x+ldx, y+ldy, "Bullets", Bullet);
	
	bullet.bulletDirection = point_direction(x,y,mouse_x,mouse_y);
	
}

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), rotation_speed) * sign(dd);