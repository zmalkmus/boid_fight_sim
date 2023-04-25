// Red Team
draw_set_color(c_white);
draw_text(10, 10, "Red Team");
draw_line(10, 35, 200, 35);
var pc = (global.red_hp/global.red_max_hp) * 100;
draw_healthbar(10,40,310,60, pc, c_black, c_red, c_lime, 0, true, true);
draw_text(15, 40, "HP: " + string(global.red_hp) + "/" + string(global.red_max_hp));
draw_text(10, 60, "Ships Alive: " + string(global.red_ships_cur) + "/" + string(global.red_ships_start));
draw_text(10, 80, "Total Wins: " + string(global.red_wins));
draw_text(10, 100, "Alignment: X");
draw_text(10, 120, "Cohesion: X");
draw_text(10, 140, "Seperation: X");
draw_text(10, 160, "Low Health: X");
draw_text(10, 180, "Low Health Alignment: X");
draw_text(10, 200, "Low Health Cohesion: X");
draw_text(10, 220, "Low Health Seperation: X");


// Blue Team
draw_set_color(c_white);
draw_text(10, 310, "Blue Team");
draw_line(10, 335, 200, 335);
var pc = (global.blue_hp/global.blue_max_hp) * 100;
draw_healthbar(10,340,310,360, pc, c_black, c_red, c_lime, 0, true, true);
draw_text(15, 340, "HP: " + string(global.blue_hp) + "/" + string(global.blue_max_hp));
draw_text(10, 360, "Ships Alive: " + string(global.blue_ships_cur) + "/" + string(global.blue_ships_start));
draw_text(10, 380, "Total Wins: " + string(global.blue_wins));
draw_text(10, 400, "Alignment: X");
draw_text(10, 420, "Cohesion: X");
draw_text(10, 440, "Seperation: X");
draw_text(10, 460, "Low Health: X");
draw_text(10, 480, "Low Health Alignment: X");
draw_text(10, 500, "Low Health Cohesion: X");
draw_text(10, 520, "Low Health Seperation: X");