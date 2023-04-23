max_hp = global.ship_hp;
hp = global.ship_hp;

team = object_index;
enemy_team = (team == objBlue) ? objRed : objBlue;

position = new vector(x, y);
velocity = new vector_random(3);
steering_forces = new vector_zero();

max_speed = 3*global.game_spd;
max_force = 0.1*global.game_spd;

wander_angle = random(360);
wander_distance = 60;
wander_power = 5;
wander_change = 20;