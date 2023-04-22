// Game Variables
game_set_speed(60, gamespeed_fps);
global.game_spd = 2;
global.population = 10;


// Ship variables
global.ship_hp = 1000;
global.ship_spd = 2*global.game_spd;
global.ship_fire_rate = 60/global.game_spd;
global.attack_radius = 300;


// Bullet Variables
global.bullet_spd = 6*global.game_spd;

// TODO: restructure bullet movement and include a check for skipping over enemy ships. 
//		 (linecast between where the bullet was and where it ended up, and account for ship collision)


// Ai Variables
global.cohesion = 1;
global.seperation = 1;
global.alignment = 1;