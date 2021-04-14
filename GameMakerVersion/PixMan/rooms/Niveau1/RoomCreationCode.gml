set_ambient_music(NinjaChips);

var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);
mp_grid_add_instances(global.grid, Wall, false);

var game = instance_create_layer(0,0,"Abstracts",Game);
game.level_name = "Level 1 - 1";