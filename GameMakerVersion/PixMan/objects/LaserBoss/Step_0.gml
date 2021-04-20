/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(active_laser_count > 4){
	boss_phase = 1;
}

var bubbleDeathCount = 0;
	
for(var i = 0; i< ds_list_size(self.bubbles); i++){
	self.bubbles[| i].base_walk_speed = 3;
	self.bubbles[| i].killable = true;
	if(self.bubbles[| i].isDead){
		bubbleDeathCount++;
	}
}
	
if(bubbleDeathCount >= ds_list_size(self.bubbles)){
	boss_phase = 2;
}

if(life_points <= 0){
	isDead = true;
	boss_phase = 3;
}

// Laser rotatifs
if(boss_phase ==0){

	for(var i = 0; i < ds_list_size(self.lasers); i++){
		if(i < active_laser_count){
			weapon_shoot(self.lasers[| i]);
		}
		self.lasers[| i].image_angle += rotation_speed;
	}

}

// Boules de couleurs avec Spawn d'ennemis
else if(boss_phase == 1){
	
	//self.base_walk_speed = 1;
	
	//follow_entity(instance_nearest(x,y,Player));
	
	
}

// Mode Berserk

else if(boss_phase == 2){
	self.killable = true;
	
	self.base_walk_speed = 3;
	follow_entity(instance_nearest(x,y,Player));
	
	// Couleur alternée
	blend_color(self);
	
	colorTimer--;
	if(colorTimer <= 0){
		colorIndex++;
		if(colorIndex >= 6){
			colorIndex = 0;
		}
		self.color = bubbleColors[colorIndex];
		colorTimer = colorTimerMax;
	}
	
	
	var bulletsTaken = ds_list_create();
	var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
	if(count>0){
		for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
			if(bulletsTaken[| index].color == self.color && bulletsTaken[| index].owner != self.id){
				life_points--;
				if(life_points <= 0){
					
					isDead = true;
					
					global.PLAYER_SCORE += entity_score;
				}
				instance_destroy(bulletsTaken[| index]);
			}
		}
	}
}
else{
	self.image_blend = c_black;
	var finalDoor = instance_nearest(x,y,Door);
	if(finalDoor > 0){
		finalDoor.closed = false;
	}
}