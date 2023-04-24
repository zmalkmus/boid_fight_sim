// Game Variables
global.game_spd = 2;
global.population = 10;
global.base_radius = 500;
global.base_hp = 20000;


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