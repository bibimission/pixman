/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

pressRight = keyboard_check(vk_right);
pressLeft = keyboard_check(vk_left);
pressUp = keyboard_check(vk_up);
pressDown = keyboard_check(vk_down);

var xChange = (pressRight - pressLeft) * walkSpeed;
var yChange = (pressDown - pressUp) * walkSpeed;


// Collision mur
if(!place_meeting(x + xChange, y,oWall)){
	x += xChange;
	Weapon.x += xChange;
}
if(!place_meeting(x, y + yChange,oWall)){
	y += yChange;
	Weapon.y += yChange;
}

// Sol

var floorUnder = instance_position(x,y,Floor);
if(floorUnder != pointer_null){
	mainWeapon.color = floorUnder.color;
}

