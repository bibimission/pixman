/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var centerX = x + sprite_width/2;
var centerY = y + sprite_height/2;

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

var floorUnder = instance_place(centerX,centerY,Floor);
if(floorUnder != pointer_null){
	mainWeapon.color = floorUnder.color;
}



