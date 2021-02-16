/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

blend_color(self);

var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(bulletsTaken[| index].color == self.color){
			life_points = life_points - 1;		
			if(life_points == 0){
				instance_destroy(self);
				global.PLAYER_SCORE+=1;
			}
		}
		instance_destroy(bulletsTaken[| index]);
	}
}
//draw_sprite(lifeEnnemi,self,x,y);
/*var bulletsTaken = ds_list_create();
var count = instance_place_list(x, y, Bullet, bulletsTaken, true);
if(count>0){
	for(var index = 0; index < ds_list_size(bulletsTaken); index++) {
		if(bulletsTaken[| index].team != self.team){
			life_points = life_points-1;
		}
		instance_destroy(bulletsTaken[| index]);
	}
}
