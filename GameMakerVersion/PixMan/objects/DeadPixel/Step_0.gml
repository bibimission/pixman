/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blend_color(self);

event_inherited();

if( collision_circle( x, y, detection_radius, Player, false, false )){
	follow_entity(instance_nearest(x,y,Player));
}

