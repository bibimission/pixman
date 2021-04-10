/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var camera = camera_get_active();

draw_set_halign(fa_center);

if(paused){
    draw_text( camera_get_view_x(camera) + camera_get_view_width(camera_get_active()) * 0.5,
				camera_get_view_y(camera) + camera_get_view_height(camera_get_active()) * 0.5, "Paused");
}

if(level_start){
	draw_text( camera_get_view_x(camera) + camera_get_view_width(camera_get_active()) * 0.5,
				camera_get_view_y(camera) + camera_get_view_height(camera_get_active()) * 0.5, level_name);
		
	if(blink_timer < blink_timer_max / 2){
		draw_text( camera_get_view_x(camera) + camera_get_view_width(camera_get_active()) * 0.5,
			camera_get_view_y(camera) + camera_get_view_height(camera_get_active()) * 0.7, "Appuyez sur une touche pour commencer");
	}
}