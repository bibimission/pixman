/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

event_inherited();

var speedCarac = instance_create_layer(0,0,"Abstracts",Caracteristic);
speedCarac.key = global.CARAC_WALK_SPEED;
speedCarac.value = 5;
ds_list_add(caracteristics,speedCarac);