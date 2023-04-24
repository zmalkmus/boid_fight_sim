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
	
	var radar_count = collision_circle_list(x,y, global.attack_radius, enemy_team, false, true, radar, true);
	
	// If there are ships inside the radius, attack the closest one that isn't being blocked by an ally ship
	if (radar_count > 0) 
	{
		ship.targeted_by = 0;
		ship.can_target = 0;
		for (var i = 0; i < radar_count; i++){
			var target = ds_list_find_value(radar, i);
			var dir = point_direction(ship.x, ship.y, target.x, target.y);
			var rangeCheck = range(ship, dir, 0);
			if(rangeCheck){
				ship.can_target++;
			}else if(range(ship,dir, 1)){
				ship.targeted_by++;
			}
		}
		for (var i = 0; i < radar_count; i++) 
		{
			var target = ds_list_find_value(radar, i);
			var dir = point_direction(ship.x, ship.y, target.x, target.y);
			if (!collision_line(x, y, target.x, target.y, team, false, true) && range(ship, dir, 0))	// Don't target ships you can't see
			{
				return target;
			}
		}
		return noone;
	}
	else return noone;
}