var healList = ds_list_create();
collision_circle_list(x, y, global.base_radius, objBlue, false, true, healList, false);

while (!ds_list_empty(healList))
{
	var ship = ds_list_find_value(healList, 0);
	if (ship.hp + global.heal_amount > global.ship_hp) ship.hp = global.ship_hp;
	else ship.hp += global.heal_amount;
	ds_list_delete(healList, 0);
}

alarm[0] = global.heal_rate;