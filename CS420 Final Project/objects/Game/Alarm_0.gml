/// @description Game End Timer

// Blue wins
if (global.blue_hp > global.red_hp) {
	global.blue_wins ++;
	room_restart();
}

// Red wins
else if (global.blue_hp < global.red_hp) {
	global.red_wins ++;
	room_restart();
}

// Tie
else {
	if (objBlueBase.hp > objRedBase.hp) {
		global.blue_wins ++;
		room_restart();
	}
	if (objBlueBase.hp < objRedBase.hp) {
		global.red_wins ++;
		room_restart();
	}
	else
	{
		room_restart();
	}
}