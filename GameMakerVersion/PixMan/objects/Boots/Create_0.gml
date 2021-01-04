event_inherited();

name = "Boots";

var speedCarac = instance_create_layer(0,0,"Abstracts",Caracteristic);
speedCarac.key = global.CARAC_WALK_SPEED;
speedCarac.value = 3;
ds_list_add(caracteristics,speedCarac);