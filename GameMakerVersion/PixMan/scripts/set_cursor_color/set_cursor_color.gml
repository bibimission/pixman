// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_cursor_color(color){
	switch(color){
		case global.COLOR_BLUE:
			cursor_sprite = cursorBlue;
			break;
		case global.COLOR_RED:
			cursor_sprite = cursorRed;
			break;
		case global.COLOR_GREEN:
			cursor_sprite = cursorGreen;
			break;
		case global.COLOR_NONE:
			cursor_sprite = cursorWhite;
	}
}