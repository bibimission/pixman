/// @description A chaque instant
// Vous pouvez écrire votre code dans cet éditeur
event_inherited();

pressRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
pressLeft = keyboard_check(vk_left) || keyboard_check(ord("Q"));
pressUp = keyboard_check(vk_up) || keyboard_check(ord("Z"));
pressDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

var xChange = (pressRight - pressLeft) * walk_speed;
var yChange = (pressDown - pressUp) * walk_speed;


// Collisions
if(!place_meeting(x + xChange, y,Obstacle)){
	x += xChange;
	self.mainWeapon.x += xChange;
}else{
	var obst = instance_place(x + xChange, y, Obstacle);
	if(obst.movable){
		xChange = xChange/obst.weight;
		var _list = ds_list_create();
		var encounters = collision_rectangle_list(obst.x + xChange, obst.y ,obst.x + obst.sprite_width + xChange, obst.y + obst.sprite_height,Obstacle,false,false,_list,false)
		if(ds_list_size(encounters) == 1 ){
			x += xChange;
			self.mainWeapon.x += xChange;
			obst.x += xChange;
		}
	}
}

if(!place_meeting(x, y + yChange,Obstacle)){
	y += yChange;
	self.mainWeapon.y += yChange;
}else{
	var obst = instance_place(x, y + yChange, Obstacle);
	if(obst.movable){
		yChange = yChange/obst.weight;
		var _list = ds_list_create();
		var encounters = collision_rectangle_list(obst.x , obst.y + yChange,obst.x + obst.sprite_width, obst.y + yChange + obst.sprite_height,Obstacle,false,false,_list,false);
		show_debug_message(ds_list_size(encounters));
		if(ds_list_size(encounters) == 1){
			y += yChange;
			self.mainWeapon.y += yChange;
			obst.y += yChange;
		}
	}
}

//Arme
var rotation_speed = 10;
var pd = point_direction(mainWeapon.x, mainWeapon.y, mouse_x, mouse_y);
var dd = angle_difference(mainWeapon.image_angle, pd);
mainWeapon.image_angle -= min(abs(dd), rotation_speed) * sign(dd);

if(mouse_check_button(mb_left) && mainWeapon.cooldown == 0){
	if(mainWeapon.color != global.COLOR_NONE){
		weapon_shoot(self.mainWeapon,mouse_x,mouse_y);
	}
}

// Bullets
var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(bulletsTaken[| index].team != self.team && bulletsTaken[| index].owner != self.id){
			life_points = life_points-1;
			instance_destroy(bulletsTaken[| index]);
		}
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
var itemUnder = instance_place(x,y,Item);
if(itemUnder != pointer_null && itemUnder >= 0){
	if(itemUnder.pickable){
		if(global.PLAYER_INVENTORY[? itemUnder.item_type] != pointer_null){
			var droppedItem = item_deserialize(global.PLAYER_INVENTORY[? itemUnder.item_type], itemUnder.x, itemUnder.y);
			droppedItem.pickable = false;
			droppedItem.visible = true;
		}
		ds_map_replace(global.PLAYER_INVENTORY,itemUnder.item_type, item_serialize(itemUnder));
		instance_destroy(itemUnder);
	}
}

//Pognon
var coinUnder = instance_place(x,y,Pixcoin);
if(coinUnder != pointer_null && coinUnder >= 0){
	global.PLAYER_MONEY ++;
	instance_destroy(coinUnder);
}

// Verification des stats d'items
walk_speed = base_walk_speed;

for (var k = ds_map_find_first(global.PLAYER_INVENTORY); !is_undefined(k); k = ds_map_find_next(global.PLAYER_INVENTORY, k)) {
  var item = global.PLAYER_INVENTORY[? k];
  if(item != pointer_null){
	for (var caracKey = ds_map_find_first(item[? "caracteristics"]); !is_undefined(caracKey); caracKey = ds_map_find_next(item[? "caracteristics"], caracKey)) {
		
		switch(caracKey){
			case global.CARAC_WALK_SPEED:
			walk_speed += item[? "caracteristics"][? caracKey];
		}
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
