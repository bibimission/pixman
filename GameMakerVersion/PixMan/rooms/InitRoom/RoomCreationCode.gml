//---------------- Colors

global.COLOR_RED = "COLOR_RED";
global.COLOR_GREEN = "COLOR_GREEN";
global.COLOR_BLUE = "COLOR_BLUE";

global.COLOR_YELLOW = "COLOR_YELLOW";
global.COLOR_CYAN = "COLOR_CYAN";
global.COLOR_MAGENTA = "COLOR_MAGENTA";

global.COLOR_NONE = "COLOR_NONE";

//------Music
global.CURRENT_MUSIC = RubberRat;

//-------------- Teams
global.TEAM_ALLY = "TEAM_ALLY";
global.TEAM_ENEMY = "TEAM_ENEMY";


//------------ Item types
global.ITEM_TYPE_NONE = "ITEM_TYPE_NONE";
global.ITEM_TYPE_WEAPON = "ITEM_TYPE_WEAPON";

global.ITEM_TYPE_SHOE = "ITEM_TYPE_SHOE";
global.ITEM_TYPE_CHEST = "ITEM_TYPE_CHEST";
global.ITEM_TYPE_HAT = "ITEM_TYPE_HAT";

//------------- Inventory

global.PLAYER_INVENTORY = ds_map_create();
ds_map_add(global.PLAYER_INVENTORY, global.ITEM_TYPE_SHOE,pointer_null);
ds_map_add(global.PLAYER_INVENTORY, global.ITEM_TYPE_CHEST,pointer_null);
ds_map_add(global.PLAYER_INVENTORY, global.ITEM_TYPE_HAT,pointer_null);

//---------------- Caracteristics

global.CARAC_WALK_SPEED = "WALK_SPEED";

global.PLAYER_SCORE = 0;
global.PLAYER_MONEY = 0;

room_goto(Menu);