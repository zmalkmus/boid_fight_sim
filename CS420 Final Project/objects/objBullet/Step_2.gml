// Destroy bullet if it leaves the room

if (x < 0 || x > room_width || y < 0 || y > room_height) 
{
	instance_destroy();
}

// Detect collision
if (xprevious != x || yprevious != y) 
{
	var hit = collision_line(xprevious, yprevious, x, y, objShip, false, true);
	
	if (hit != noone && hit != shooter) 
	{
		if (hit.team == enemy_team)
		{
			hit.hp -= global.bullet_dmg;
			instance_destroy();
		}
	}
}