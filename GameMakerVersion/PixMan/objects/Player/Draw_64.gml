/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*var spaceBetweenHeart = 10;*/

/*var heartWidth = sprite_get_width(filledHeart);
var heartXstart = window_get_width() - (sprite_get_width(filledHeart) + spaceBetweenHeart);

var cX = heartXstart;*/

/*for(var i=0; i<life_points_max ; i++){
	if(i> life_points){
		draw_sprite(emptyHeart,-1,cX,20);
	}else{
		draw_sprite(filledHeart,-1,cX,20);
	}
	cX -= heartWidth + spaceBetweenHeart;
}*/

draw_sprite_stretched(colorLifeHero,-1,350,40,(life_points/life_points_max)*lifeHero_with, lifeHero_height);
draw_sprite(lifeHero,-1,350,40);



//Fric
draw_sprite(pixcoin,-1, 40,30);
draw_set_color(c_white);
draw_text(80,25,"x");
draw_text(100,29,money);
draw_text(250,25,"Ennemie : " + string(global.PLAYER_SCORE));