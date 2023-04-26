// Movement here
////steering forces
target = scan_ships(self, team, enemy_team);
//nearbyPlanet = scan_planets(self);
//if(nearbyPlanet == noone){
	if(hp <= 50){
		align = -100;
		cohesion = -100;
		separation = 100;
	}else{
		align = 300;
		cohesion = 100;
		separation = 50;
	}

	apply_force(align_force(object_index, align));
	apply_force(cohesion_force(object_index, cohesion));
	apply_force(separation_force(object_index, separation), 2);


	//update vectors

	//if (targeted_by > can_target) {
	if(target[1] != noone){
		steering_forces.add(evade_force(target[1]));
	}
	//} else if (can_target > targeted_by){
	if(target[0] != noone){
		if(target[0] != objRedBase && target[0] != objBlueBase){
			steering_forces.add(pursue_force(target[0]));
		}
	}
//}else{
//	steering_forces.add(planet_force(self, nearbyPlanet));
//}
//}
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

// Attack
if (target[0] != noone) {
	targetX = target[0].x;
	targetY = target[0].y;
	
	if (alarm[0] == -1) alarm[0] = global.ship_fire_rate
}


// Die
if (hp < 0)
{
	instance_destroy();
}