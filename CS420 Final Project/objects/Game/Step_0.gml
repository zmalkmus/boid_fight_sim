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
if (objRedBase.hp <= 0 || global.red_hp <= 0)
{
	global.blue_wins++;
	
	// Print output to file
	
	// Change parameters
	global.red_alignment = irandom_range(-500,500);
	global.red_cohesion = irandom_range(-500,500);
	global.red_seperation = irandom_range(0,500);
	global.red_low_health = irandom_range(0,100);
	global.red_low_health_align = irandom_range(-500,500);
	global.red_low_health_cohesion = irandom_range(-500,500);
	global.red_low_health_seperation = irandom_range(0,500);
	
	room_restart();
}

else if (objBlueBase.hp <= 0 || global.blue_hp <= 0)
{
	global.red_wins++;
	
	// Print output to file
	
	// Change parameters
	global.blue_alignment = irandom_range(-500,500);
	global.blue_cohesion = irandom_range(-500,500);
	global.blue_seperation = irandom_range(0,500);
	global.blue_low_health = irandom_range(0,100);
	global.blue_low_health_align = irandom_range(-500,500);
	global.blue_low_health_cohesion = irandom_range(-500,500);
	global.blue_low_health_seperation = irandom_range(0,500);
	
	room_restart();
}

// Decrement game timer
game_timer --;
