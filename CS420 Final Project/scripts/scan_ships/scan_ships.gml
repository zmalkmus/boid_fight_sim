function range(ship, target, fb){
	var deg = ship.velocity.get_direction();
	if(fb == 1){
		deg += 180;
		if(deg > 360){
			deg = deg - 360;
		}
	}
	var upper = deg + 45;
	var lower = deg - 45;
	if(upper > 360){
		result = upper - 360;
		if(target >= lower || target <= result){
			return true;
		}
	}else if(lower < 0){
		result = 360 + lower;
		if(target <= upper || target >= result){
			return true;
		}
	}else{
		if(ship.velocity.get_direction() + 45 > target && ship.velocity.get_direction() - 45 < target ){
			return true;
		}
	}
	return false;
}

function scan_ships(ship, team, enemy_team){
	var radar = ds_list_create();
	
	if (team == "BLUE")
	{
		var radar_count = collision_circle_list(x,y, global.attack_radius, objRed, false, true, radar, true);
		if (distance_to_object(objRedBase) <= global.attack_radius) 
		{
			ds_list_insert(radar, radar_count/2, objRedBase);
			radar_count++;
		}
	}
	else if (team == "RED")
	{
		var radar_count = collision_circle_list(x,y, global.attack_radius, objBlue, false, true, radar, true);
		if (distance_to_object(objBlueBase) <= global.attack_radius) 
		{
			ds_list_insert(radar, radar_count/2, objBlueBase);
			radar_count++;
		}
	}
	
	// If there are ships inside the radius, attack the closest one that isn't being blocked by an ally ship
	if (radar_count > 0) 
	{
		ship.targeted_by = 0;
		ship.can_target = 0;
		
		for (var i = 0; i < radar_count; i++){
			var target = ds_list_find_value(radar, i);
			var dir = point_direction(ship.x, ship.y, target.x, target.y);
			var rangeCheck = range(ship, dir, 0);
			
			var friendlyInWay = friendly_in_way(team, target);
			
			if((friendlyInWay == noone) && rangeCheck){
				ship.can_target++;
			}else if((friendlyInWay == noone) && range(ship,dir, 1)){
				ship.targeted_by++;
			}
		}
		
		var nearestEnemy = noone; 
		for(var i = 0; i < radar_count; i++){
			var target = ds_list_find_value(radar, i);
			var dir = point_direction(ship.x, ship.y, target.x, target.y);
			
			var friendlyInWay = friendly_in_way(team, target);
			
			if (range(ship, dir, 1))	// Don't target ships you can't see
			{
				nearestEnemy = target;
				break;
			}
		}
		var finalTarget = noone;
		for (var i = 0; i < radar_count; i++) 
		{
			var target = ds_list_find_value(radar, i);
			var dir = point_direction(ship.x, ship.y, target.x, target.y);
			
			var friendlyInWay = friendly_in_way(team, target);
			
			if ((friendlyInWay == noone) && range(ship, dir, 0))	// Don't target ships you can't see
			{
				finalTarget = target;
				break;
			}
		}
		
		return [finalTarget, nearestEnemy];
	}
	else return [noone, noone];
}

function friendly_in_way(team, target) {
	friendlyInWay = noone;
	
	if (team == "BLUE") {
		var friendlyInWay = collision_line(x, y, target.x, target.y, objBlue, false, true);
		if (friendlyInWay == noone) friendlyInWay = collision_line(x, y, target.x, target.y, objBlueBase, false, true);
	}
	else if (team == "RED") {
		var friendlyInWay = collision_line(x, y, target.x, target.y, objRed, false, true);
		if (friendlyInWay == noone) friendlyInWay = collision_line(x, y, target.x, target.y, objRedBase, false, true);
	}
	
	return friendlyInWay;
}