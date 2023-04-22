if (enemy_team == other.object_index)
{
	other.hp -= 10;
	instance_destroy();
}