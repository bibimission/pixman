// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function blend_color(instance){
	switch(instance.color){
		case global.COLOR_BLUE:
		instance.image_blend = c_blue;
		break;
		
		case global.COLOR_RED:
		instance.image_blend = c_red;
		break;
		
		case global.COLOR_GREEN:
		instance.image_blend = c_green;
		break;
		
		case global.COLOR_MAGENTA:
		instance.image_blend = c_purple;
		break;
		
		case global.COLOR_YELLOW:
		instance.image_blend = c_yellow;
		break;
		
		case global.COLOR_CYAN:
		instance.image_blend = c_aqua;
		break;
		
		case global.COLOR_NONE:
		instance.image_blend = c_white;
		break;
	}
}