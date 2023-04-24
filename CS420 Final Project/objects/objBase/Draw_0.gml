draw_self();


if (team == objRed) {
	draw_set_color(c_red);
}
if (team == objBlue) {
	draw_set_color(c_blue);
}

draw_circle(x,y,global.base_radius,true);