/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


var xChange = dcos(bulletDirection) * bulletSpeed;
var yChange =  - dsin(bulletDirection) * bulletSpeed;

if(!place_meeting(x + xChange, y,Wall)){
	x += xChange;
}
else{
	
	wall = instance_place(x + xChange, y,Wall);
	if (wall != noone){
		color = mix_colors(color,wall.color);
	}
	//instance_destroy();
}

if(!place_meeting(x, y + yChange,Wall)){
	y += yChange;
}
else{
	wall = instance_place(x, y + yChange,Wall);
	if (wall != noone){
		color = mix_colors(color,wall.color);
	}
	//instance_destroy();
}

blend_color(self);

