if (keyboard_check_pressed(vk_space)) room_restart();

// Update Red Team Variables
global.red_ships_cur = instance_number(objRed);

global.red_hp = 0;
for (var i = 0; i < global.red_ships_cur; i++) 
{
	var ship = instance_find(objRed, i);
	global.red_hp += ship.hp;
}


// Update Blue Team Variables
global.blue_ships_cur = instance_number(objBlue);

global.blue_hp = 0;
for (var i = 0; i < global.blue_ships_cur; i++)
{
	var ship = instance_find(objBlue, i);
	global.blue_hp += ship.hp;
}


// End Game
if (/*objRedBase.hp <= 0 ||*/ global.red_hp <= 0)
{
	blue_win();
	
	// Change parameters
	
	room_restart();
}

else if (/*objBlueBase.hp <= 0 ||*/ global.blue_hp <= 0)
{
	red_win();
	
	// Change parameters
	
	room_restart();
}

// Decrement game timer
game_timer --;
