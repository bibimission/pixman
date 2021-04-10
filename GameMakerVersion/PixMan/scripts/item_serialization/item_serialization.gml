// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations

/*
Convertit un Item en données serializées
*/
function item_serialize(itemInstance){
	var itemMap = ds_map_create();
	
	ds_map_add(itemMap, "name", itemInstance.name);
	ds_map_add(itemMap, "item_type", itemInstance.item_type);
	
	var newCaracs = ds_map_create();
	ds_map_copy(newCaracs, itemInstance.caracteristics);
	
	ds_map_add(itemMap, "caracteristics",  newCaracs);
	ds_map_add(itemMap, "sprite_index", itemInstance.sprite_index);
	
	return itemMap;
}

/*
Créee une instance à partir d'une donnée serializée
*/
function item_deserialize(serializeItem, coordX, coordY){
	var itemInstance = instance_create_layer(coordX, coordY, "OnTheGround", Item);
	
	itemInstance.name = serializeItem.name;
	itemInstance.item_type = serializeItem.item_type;
	itemInstance.caracteristics = serializeItem.caracteristics;
	itemInstance.sprite_index = serializeItem.sprite_index;
	
	return itemInstance;
}