/// @description A chaque instant
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();

pressRight = keyboard_check(vk_right);
pressLeft = keyboard_check(vk_left);
pressUp = keyboard_check(vk_up);
pressDown = keyboard_check(vk_down);

var xChange = (pressRight - pressLeft) * walk_speed;
var yChange = (pressDown - pressUp) * walk_speed;


// Collisions
if(!place_meeting(x + xChange, y,Obstacle)){
	x += xChange;
	Weapon.x += xChange;
}else{
	var obst = instance_place(x + xChange, y, Obstacle);
	if(obst.movable){
		xChange = xChange/obst.weight;
		var _list = ds_list_create();
		var encounters = collision_rectangle_list(obst.x + xChange, obst.y ,obst.x + obst.sprite_width + xChange, obst.y + obst.sprite_height,Obstacle,false,false,_list,false)
		if(ds_list_size(encounters) == 1 ){
			x += xChange;
			Weapon.x += xChange;
			obst.x += xChange;
		}
	}
}

if(!place_meeting(x, y + yChange,Obstacle)){
	y += yChange;
	Weapon.y += yChange;
}else{
	var obst = instance_place(x, y + yChange, Obstacle);
	if(obst.movable){
		yChange = yChange/obst.weight;
		var _list = ds_list_create();
		var encounters = collision_rectangle_list(obst.x , obst.y + yChange,obst.x + obst.sprite_width, obst.y + yChange + obst.sprite_height,Obstacle,false,false,_list,false);
		show_debug_message(ds_list_size(encounters));
		if(ds_list_size(encounters) == 1){
			y += yChange;
			Weapon.y += yChange;
			obst.y += yChange;
		}
	}
}

// Bullets
var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(bulletsTaken[| index].team != self.team){
			life_points = life_points - 1;		
			if(life_points == 0){
				instance_destroy(self);
			}
		}
		instance_destroy(bulletsTaken[| index]);
	}
}

// Sol

var floorUnder = ds_list_create();
var count = instance_position_list(x, y, Floor, floorUnder, true);
if(count>0){
	mainWeapon.color = floorUnder[| 0].color;
}

ds_list_destroy(floorUnder);

// Items au sol
var itemUnder = instance_position(x,y,Item);
if(itemUnder != pointer_null && itemUnder >= 0){
	ds_list_add(inventory,itemUnder);
	itemUnder.x = -9000;
}

//Pognon
var coinUnder = instance_position(x,y,Pixcoin);
if(coinUnder != pointer_null && coinUnder >= 0){
	money ++;
	instance_destroy(coinUnder);
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
