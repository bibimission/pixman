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

//Fric
draw_sprite(pixcoin,-1, 40,30);
draw_set_color(c_white);
draw_text(80,25,"x");
draw_text(100,29,money);

// Inventaire

var iterator = 0;
var marginY = 60;
var baseMarginY = 150;
for (var k = ds_map_find_first(inventory); !is_undefined(k);  k = ds_map_find_next(inventory, k)) {
  var v = inventory[? k];
  var slotY = (sprite_height + marginY) * iterator + baseMarginY;
  draw_sprite(InventorySlot, -1, 80, slotY);
  if(v != pointer_null){
		draw_sprite(object_get_sprite(v.object_index),-1, 80, slotY);
  }
  iterator ++;
}