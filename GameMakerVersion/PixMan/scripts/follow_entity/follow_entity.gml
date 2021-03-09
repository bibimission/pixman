// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function follow_entity(entity){
	if(mp_grid_path(global.grid,path,x,y,entity.x,entity.y,1)){
		path_start(path, 4, path_action_stop,false);
	}
}