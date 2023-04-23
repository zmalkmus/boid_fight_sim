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
		if (hit.object_index == enemy_team)
		{
			x = hit.x;
			y = hit.y;
			hit.hp -= 10;
			instance_destroy();
		}
	}
}