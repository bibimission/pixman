/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(place_meeting(x + hspeed, y, Obstacle)){
	wall = instance_place(x +hspeed, y,Obstacle);
	if (wall != noone){
		if(wall.bulletProof){
			if(nb_bounces > 0){
				color = mix_colors(color,wall.color);
				hspeed = - hspeed;
				nb_bounces--;
			}
			else{
				instance_destroy();
			}
		}
	}
}

if(place_meeting(x, y + vspeed, Obstacle)){
	wall = instance_place(x, y + vspeed,Obstacle);
	if (wall != noone){
		if(wall.bulletProof){
			if(nb_bounces > 0){
				color = mix_colors(color,wall.color);
				vspeed = - vspeed;
				nb_bounces--;
			}
			else{
				instance_destroy();
			}
		}
	}
}

blend_color(self);

