var bullet = instance_create_depth(x, y, -1000, objBullet, {shooter: self, team: team, enemy_team: enemy_team});

bullet.direction = point_direction(x, y, targetX, targetY);
bullet.image_angle = bullet.direction;
bullet.speed = global.bullet_spd;