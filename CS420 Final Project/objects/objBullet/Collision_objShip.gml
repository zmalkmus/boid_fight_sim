if (other.team == enemy_team)
{
	other.hp -= global.bullet_dmg;
	instance_destroy();
}