/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blend_color(self);

var boss = instance_find(LaserBoss,0);

phase += base_walk_speed;
x = boss.x + radius * dcos(phase);
y = boss.y - radius * dsin(phase);

if(killable){

	var bulletsTaken = ds_list_create();
	var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
	if(count>0){
		for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
			if(bulletsTaken[| index].color == self.color && bulletsTaken[| index].owner != self.id){
				life_points--;
				if(life_points <= 0 && !isDead){
					
					var spawnIndex = 0;
					while(spawnIndex < instance_number(SpawnPoint)){
						var spawn = instance_find(SpawnPoint, spawnIndex);
						var newEnnemy = instance_create_layer(spawn.x,spawn.y, "Entities",DeadPixel);
						newEnnemy.color = self.color;
						newEnnemy.visible = true;
						newEnnemy.detection_radius = 2000;
						spawnIndex++;
					}
					
					global.PLAYER_SCORE += entity_score;
					isDead = true;
					self.visible = false;
				}
				instance_destroy(bulletsTaken[| index]);
			}
		}
	}

}