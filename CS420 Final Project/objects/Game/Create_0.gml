// Game Variables
global.game_spd = 4;
global.population = 10;
global.base_radius = 300;
global.base_hp = 20000;

// Blue Team
global.blue_ships_start = 0;
global.blue_ships_cur = 0;
global.blue_max_hp = 0;
global.blue_hp = 0;
global.blue_wins = 0;

// Red Team
global.red_ships_start = 0;
global.red_ships_cur = 0;
global.red_max_hp = 0;
global.red_hp = 0;
global.red_wins = 0;

// Ship variables
global.ship_hp = 100;
global.ship_spd = 2*global.game_spd;
global.ship_fire_rate = 60/global.game_spd;
global.attack_radius = 300;
global.heal_rate = 60/global.game_spd;
global.heal_amount = 10;

// Bullet Variables
global.bullet_dmg = 20;
global.bullet_spd = 6*global.game_spd;

// Ai Variables
global.cohesion = 1;
global.seperation = 1;
global.alignment = 1;