/// @description Game End Timer

// Blue wins
if (global.blue_hp > global.red_hp) {
	blue_win();
	room_restart();
}

// Red wins
else if (global.blue_hp < global.red_hp) {
	red_win();
	room_restart();
}

// Tie
else {
	if (objBlueBase.hp > objRedBase.hp) {
		blue_win();
		room_restart();
	}
	if (objBlueBase.hp < objRedBase.hp) {
		red_win();
		room_restart();
	}
	else
	{
		room_restart();
	}
}