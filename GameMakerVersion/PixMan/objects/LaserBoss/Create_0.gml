/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();


// Lasers
self.lasers = ds_list_create();

var angle = 0;

for(var i =0; i < 4; i++){

	var newLaser = instance_create_layer(self.x, self.y, "EnemyWeapons",Weapon);
	newLaser.bulletSpeed = 30;
	newLaser.team = self.team;
	if(i == 1 || i == 3){
		angle += 90;
	}
	newLaser.image_angle = angle;
	newLaser.cooldownMax = 0;
	angle += 90;
	ds_list_add(self.lasers, newLaser);
}

active_laser_count = 1;


// Bulles
self.bubbles = ds_list_create();
self.bubbleColors = [];
bubbleColors[0] = global.COLOR_BLUE;
bubbleColors[1] = global.COLOR_YELLOW;
bubbleColors[2] = global.COLOR_RED;
bubbleColors[3] = global.COLOR_CYAN;
bubbleColors[4] = global.COLOR_GREEN;
bubbleColors[5] = global.COLOR_MAGENTA;

var xCoords = [x, x+125, x+125, x, x-125, x-125 ];
var yCoords = [y+150, y+50, y-50, y-150, y-50, y+50 ];

for(var i = 0; i < 6; i++){
	var newBubble = instance_create_layer(xCoords[i],yCoords[i], "Entities", BossBubble);
	newBubble.color = bubbleColors[i];
	newBubble.visible = true;
	
	newBubble.radius = point_distance(self.x, self.y, newBubble.x, newBubble.y);
	newBubble.phase = point_direction(self.x, self.y, newBubble.x, newBubble.y);
	
	newBubble.base_walk_speed = 10;
	
	newBubble.killable = false;
	
	ds_list_add(self.bubbles, newBubble);
}