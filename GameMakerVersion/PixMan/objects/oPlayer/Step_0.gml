/// @description A chaque instant
// Vous pouvez écrire votre code dans cet éditeur

pressRight = keyboard_check(vk_right);
pressLeft = keyboard_check(vk_left);
pressUp = keyboard_check(vk_up);
pressDown = keyboard_check(vk_down);

var xChange = (pressRight - pressLeft) * walk_speed;
var yChange = (pressDown - pressUp) * walk_speed;


// Collision mur
if(!place_meeting(x + xChange, y,oWall) && !place_meeting(x + xChange, y,Chest)){
	x += xChange;
	Weapon.x += xChange;
}
if(!place_meeting(x, y + yChange,oWall) && !place_meeting(x, y + yChange,Chest)){
	y += yChange;
	Weapon.y += yChange;
}

// Sol

var floorUnder = instance_position(x,y,Floor);
if(floorUnder != pointer_null){
	mainWeapon.color = floorUnder.color;
}

// Items au sol
var itemUnder = instance_position(x,y,Item);
if(itemUnder != pointer_null && itemUnder >= 0){
	ds_list_add(inventory,itemUnder);
	itemUnder.x = -9000;
}

// Verification des stats d'items
walk_speed = base_walk_speed;
for(var index = 0; index < ds_list_size(inventory); index++) {
    var item = inventory[| index];
    for(var caracIndex = 0; caracIndex < ds_list_size(item.caracteristics); caracIndex++) {
		var carac = item.caracteristics[| caracIndex];
		switch(carac.key){
			case global.CARAC_WALK_SPEED:
			walk_speed += carac.value;
		}
	}
}


// --------  ANIMATION

//Demarche du personnage
if(pressRight){
	sprite_index = ryukD;
	image_speed = 15;
}else if(pressLeft){
	sprite_index = ryukG;
	image_speed = 15;
}else if(pressDown){
	sprite_index = ryukB;
	image_speed = 15;
}else if(pressUp){
	sprite_index = ryukH;
	image_speed = 15;
}else{
	image_index = 0;
	image_speed = 0;
}
