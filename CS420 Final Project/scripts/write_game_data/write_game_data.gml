function write_game_data(blue_win) {
	
	var outputfile = program_directory + "output.csv";
	
	if (!directory_exists(outputfile)) {
		round_data = "blue_win,blue_start_hp,blue_final_hp,blue_ships_start,blue_ships_final,blue_alignment,blue_cohesion,blue_seperation,blue_lh,blue_lh_alignment,blue_lh_cohesion,blue_lh_seperation," + 
			"red_start_hp,red_final_hp,red_ships_start,red_ships_final,red_alignment,red_cohesion,red_seperation,red_lh,red_lh_alignment,red_lh_cohesion,red_lh_seperation\n";
	}

	// blue_win, blue_start_hp, blue_final_hp, blue_ships_start, blue_ships_final, blue_alignment, blue_cohesion, blue_seperation, blue_lh, blue_lh_alignment, blue_lh_cohesion, blue_lh_seperation
	round_data = "";
	round_data += (blue_win) ? "1," : "0,";
	round_data += string(global.blue_max_hp) + "," + string(global.blue_hp) + "," + string(global.blue_ships_start) + "," +
		string(global.blue_ships_cur) + "," + string(global.blue_alignment) + "," + string(global.blue_cohesion) + "," + string(global.blue_seperation) + "," +
		string(global.blue_low_health) + "," + string(global.blue_low_health_align) + "," + string(global.blue_low_health_cohesion) + "," + string(global.blue_low_health_seperation) + ",";
		
	round_data += string(global.red_max_hp) + "," + string(global.red_hp) + "," + string(global.red_ships_start) + "," +
		string(global.red_ships_cur) + "," + string(global.red_alignment) + "," + string(global.red_cohesion) + "," + string(global.red_seperation) + "," +
		string(global.red_low_health) + "," + string(global.red_low_health_align) + "," + string(global.red_low_health_cohesion) + "," + string(global.red_low_health_seperation);
		
	var file = file_text_open_append(outputfile);
	file_text_write_string(file, round_data);
	file_text_writeln(file);
	file_text_close(file);
}

function blue_win() {
	global.blue_wins++;
	write_game_data(1);
}

function red_win() {
	global.red_wins++;
	write_game_data(0);
}