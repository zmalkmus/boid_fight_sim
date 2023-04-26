max_hp = global.ship_hp;
hp = global.ship_hp;

position = new vector(x, y);
velocity = new vector_random(3);
steering_forces = new vector_zero();

max_speed = 3*global.game_spd;
max_force = 0.1*global.game_spd;

wander_angle = random(360);
wander_distance = 60;
wander_power = 5;
wander_change = 20;

targeted_by = 0;
can_target = 0; 

baseAlign = 300;
baseCohesion = 100;
baseSeparation = 50;
align = 300;
cohesion = 100;
separation = 50;
lowHealth = 50;
lowHealthAlign = -100;
lowHealthCohesion = -100;
lowHealthSeparation = 50;

nearbyPlanet = noone;