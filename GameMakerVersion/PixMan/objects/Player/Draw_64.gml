/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


// Vie (Coeurs)
/*
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
*/
// Vie (Barre)
var lifeHero_with = 297;
var lifeHero_height = 21;

draw_sprite_stretched(heroBarColor,-1,350,40,(life_points/life_points_max)*lifeHero_with, lifeHero_height);
draw_sprite(heroBar,-1,350,40);

//Fric
draw_sprite(pixcoin,-1, 40,30);
draw_set_color(c_white);
draw_text(80,25,"x");
draw_text(100,29, global.PLAYER_MONEY);

// Score
draw_text(70,80,"Score");
draw_text(120,80,global.PLAYER_SCORE);

// Inventaire

var iterator = 0;
var marginY = 60;
var baseMarginY = 150;
for (var k = ds_map_find_first(global.PLAYER_INVENTORY); !is_undefined(k);  k = ds_map_find_next(global.PLAYER_INVENTORY, k)) {
  var v = global.PLAYER_INVENTORY[? k];
  var slotY = (sprite_height + marginY) * iterator + baseMarginY;
  draw_sprite(InventorySlot, -1, 50, slotY);
  if(v != pointer_null){
		draw_sprite(v[? "sprite_index"],-1, 50, slotY);
  }
  iterator ++;
}