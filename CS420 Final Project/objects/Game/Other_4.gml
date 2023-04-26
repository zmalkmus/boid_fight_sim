// Initialize Blue Team Variables
global.blue_ships_start = instance_number(objBlue);
global.blue_ships_cur = global.blue_ships_start;

global.blue_max_hp = 0;
for (var i = 0; i < global.blue_ships_start; i++)
{
	var ship = instance_find(objBlue, i);
	global.blue_max_hp += ship.hp;
}

global.blue_hp = global.blue_max_hp;


// Initialize Red Team Variables
global.red_ships_start = instance_number(objRed);
global.red_ships_cur = global.red_ships_start;

global.red_max_hp = 0;
for (var i = 0; i < global.red_ships_start; i++)
{
	var ship = instance_find(objRed, i);
	global.red_max_hp += ship.hp;
}

global.red_hp = global.red_max_hp;


// Start game timer
game_timer = 60 * 60 * 1; // 1 minutes
alarm[0] = game_timer; 