// Red Team
draw_set_color(c_white);
draw_text(1690, 10, "Red Team");
draw_line(1690, 35, 1890, 35);
var pc = (global.red_hp/global.red_max_hp) * 100;
draw_healthbar(1690,40,1990,60, pc, c_black, c_red, c_lime, 0, true, true);
draw_text(1695, 40, "HP: " + string(global.red_hp) + "/" + string(global.red_max_hp));
draw_text(1690, 60, "Ships Alive: " + string(global.red_ships_cur) + "/" + string(global.red_ships_start));
draw_text(1690, 80, "Total Wins: " + string(global.red_wins));
draw_text(1690, 100, "Alignment: " + string(global.red_alignment));
draw_text(1690, 120, "Cohesion: " + string(global.red_cohesion));
draw_text(1690, 140, "Seperation: " + string(global.red_seperation));
draw_text(1690, 160, "Low Health: " + string(global.red_low_health));
draw_text(1690, 180, "Low Health Alignment: " + string(global.red_low_health_align));
draw_text(1690, 200, "Low Health Cohesion: " + string(global.red_low_health_cohesion));
draw_text(1690, 220, "Low Health Seperation: " + string(global.red_low_health_seperation));

//draw_set_color(c_white);
//draw_text(10, 10, "Red Team");
//draw_line(10, 35, 210, 35);
//var pc = (global.red_hp/global.red_max_hp) * 100;
//draw_healthbar(10,40,310,60, pc, c_black, c_red, c_lime, 0, true, true);
//draw_text(15, 40, "HP: " + string(global.red_hp) + "/" + string(global.red_max_hp));
//draw_text(10, 60, "Ships Alive: " + string(global.red_ships_cur) + "/" + string(global.red_ships_start));
//draw_text(10, 80, "Total Wins: " + string(global.red_wins));
//draw_text(10, 100, "Alignment: " + string(global.red_alignment));
//draw_text(10, 120, "Cohesion: " + string(global.red_cohesion));
//draw_text(10, 140, "Seperation: " + string(global.red_seperation));
//draw_text(10, 160, "Low Health: " + string(global.red_low_health));
//draw_text(10, 180, "Low Health Alignment: " + string(global.red_low_health_align));
//draw_text(10, 200, "Low Health Cohesion: " + string(global.red_low_health_cohesion));
//draw_text(10, 220, "Low Health Seperation: " + string(global.red_low_health_seperation));


// Blue Team
//draw_set_color(c_white);
//draw_text(1690, 10, "Blue Team");
//draw_line(1690, 35, 1890, 35);
//var pc = (global.blue_hp/global.blue_max_hp) * 100;
//draw_healthbar(1690,40,1990,60, pc, c_black, c_red, c_lime, 0, true, true);
//draw_text(1695, 40, "HP: " + string(global.blue_hp) + "/" + string(global.blue_max_hp));
//draw_text(1690, 60, "Ships Alive: " + string(global.blue_ships_cur) + "/" + string(global.blue_ships_start));
//draw_text(1690, 80, "Total Wins: " + string(global.blue_wins));
//draw_text(1690, 100, "Alignment: " + string(global.blue_alignment));
//draw_text(1690, 120, "Cohesion: " + string(global.blue_cohesion));
//draw_text(1690, 140, "Seperation: " + string(global.blue_seperation));
//draw_text(1690, 160, "Low Health: " + string(global.blue_low_health));
//draw_text(1690, 180, "Low Health Alignment: " + string(global.red_low_health_align));
//draw_text(1690, 200, "Low Health Cohesion: " + string(global.red_low_health_cohesion));
//draw_text(1690, 220, "Low Health Seperation: " + string(global.red_low_health_seperation));

draw_set_color(c_white);
draw_text(10, 10, "Blue Team");
draw_line(10, 35, 210, 35);
var pc = (global.blue_hp/global.blue_max_hp) * 100;
draw_healthbar(10,40,310,60, pc, c_black, c_red, c_lime, 0, true, true);
draw_text(10, 40, "HP: " + string(global.blue_hp) + "/" + string(global.blue_max_hp));
draw_text(10, 60, "Ships Alive: " + string(global.blue_ships_cur) + "/" + string(global.blue_ships_start));
draw_text(10, 80, "Total Wins: " + string(global.blue_wins));
draw_text(10, 100, "Alignment: " + string(global.blue_alignment));
draw_text(10, 120, "Cohesion: " + string(global.blue_cohesion));
draw_text(10, 140, "Seperation: " + string(global.blue_seperation));
draw_text(10, 160, "Low Health: " + string(global.blue_low_health));
draw_text(10, 180, "Low Health Alignment: " + string(global.blue_low_health_align));
draw_text(10, 200, "Low Health Cohesion: " + string(global.blue_low_health_cohesion));
draw_text(10, 220, "Low Health Seperation: " + string(global.blue_low_health_seperation));


// Game timer
draw_text(965, 10, "Timer: " + string(game_timer/60));