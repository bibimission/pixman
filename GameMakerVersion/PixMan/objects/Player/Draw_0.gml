/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_self();

with(Wall){
	draw_set_color(c_black);
	
	draw_primitive_begin(pr_trianglestrip){
		draw_vertex(bbox_left, bbox_top);
		var dir = point_direction(other.x, other.y, bbox_left, bbox_top);
		draw_vertex(x + lengthdir_x(shadowsize, dir), y+lengthdir_y(shadowsize,dir));
		
		draw_vertex(bbox_left, bbox_bottom);
		var dir = point_direction(other.x, other.y, bbox_left, bbox_bottom);
		draw_vertex(x + lengthdir_x(shadowsize, dir), y+lengthdir_y(shadowsize,dir));
		
		draw_vertex(bbox_right, bbox_top);
		var dir = point_direction(other.x, other.y, bbox_right, bbox_top);
		draw_vertex(x + lengthdir_x(shadowsize, dir), y+lengthdir_y(shadowsize,dir));
		
		draw_vertex(bbox_right, bbox_bottom);
		var dir = point_direction(other.x, other.y, bbox_right, bbox_bottom);
		draw_vertex(x + lengthdir_x(shadowsize, dir), y+lengthdir_y(shadowsize,dir));
	}
	draw_primitive_end();
}

//Arme
var rotation_speed = 10;
var pd = point_direction(mainWeapon.x, mainWeapon.y, mouse_x, mouse_y);
var dd = angle_difference(mainWeapon.image_angle, pd);
mainWeapon.image_angle -= min(abs(dd), rotation_speed) * sign(dd);