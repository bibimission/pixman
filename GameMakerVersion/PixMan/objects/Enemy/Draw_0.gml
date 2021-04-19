/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_self();
if(self.killable){
	draw_sprite_stretched(lifeBarColor,0,x-74,y-60,(life_points/life_points_max)*lifeEnnemi_with, lifeEnnemi_height);
	draw_sprite(lifeBarEnnemy,0,x-74,y-60);
}