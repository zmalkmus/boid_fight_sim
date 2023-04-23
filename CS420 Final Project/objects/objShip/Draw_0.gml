draw_self();

var pc = (hp/max_hp) * 100;
draw_healthbar(x-10,y-15,x+10,y-10, pc, c_black, c_red, c_lime, 0, true, true);