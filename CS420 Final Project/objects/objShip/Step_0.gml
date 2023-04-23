// Movement here
////steering forces

apply_force(align_force(object_index, 300));
apply_force(cohesion_force(object_index, 100));
apply_force(separation_force(object_index, 50), 2);


//update vectors
steering_forces.limit_magnitude(max_force);
velocity.add(steering_forces);
velocity.limit_magnitude(max_speed);
position.add(velocity);
steering_forces.set(0, 0);


//update built in variables
x = position.x;
y = position.y;
image_angle = velocity.get_direction();


edge_wrap();




// Targeting
target = scan_ships(self, team, enemy_team);


// Attack
if (target != noone) {
	targetX = target.x;
	targetY = target.y;
	
	if (alarm[0] == -1) alarm[0] = global.ship_fire_rate
}


// Die
if (hp < 100)
{
	instance_destroy();
}