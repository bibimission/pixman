/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


var xChange = dcos(bulletDirection) * bulletSpeed;
var yChange =  - dsin(bulletDirection) * bulletSpeed;


if(!place_meeting(x + xChange, y,oWall)){
	x += xChange;
}
else{
	instance_destroy();
}

if(!place_meeting(x, y + yChange,oWall)){
	y += yChange;
}
else{
	instance_destroy();
}

