draw_self();
draw_set_color(c_blue);
draw_circle(x,y,global.base_radius,true);

var pc = (hp/max_hp) * 100;
draw_healthbar(x-50,y+50,x+50,y+60, pc, c_black, c_red, c_lime, 0, true, true);