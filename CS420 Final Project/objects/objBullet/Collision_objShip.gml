if (other.object_index == enemy_team)
{
	other.hp -= global.bullet_dmg;
	instance_destroy();
}