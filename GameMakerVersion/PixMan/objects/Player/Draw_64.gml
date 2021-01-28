/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var spaceBetweenHeart = 10;

var heartWidth = sprite_get_width(filledHeart);
var heartXstart = window_get_width() - (sprite_get_width(filledHeart) + spaceBetweenHeart);

var cX = heartXstart;

for(var i=0; i<life_points_max ; i++){
	if(i> life_points){
		draw_sprite(emptyHeart,-1,cX,20);
	}else{
		draw_sprite(filledHeart,-1,cX,20);
	}
	cX -= heartWidth + spaceBetweenHeart;
}
