function scan_ships(ship, team, enemy_team){
	var radar = ds_list_create();
	
	var radar_count = collision_circle_list(x,y, global.attack_radius, enemy_team, false, true, radar, true);
	
	// If there are ships inside the radius, attack the closest one that isn't being blocked by an ally ship
	if (radar_count > 0) 
	{
		for (var i = 0; i < radar_count; i++) 
		{
			var target = ds_list_find_value(radar, i);
			if (!collision_line(x, y, target.x, target.y, team, false, true))	// Don't target ships you can't see
			{
				return target;
			}
		}
		return noone;
	}
	else return noone;
}