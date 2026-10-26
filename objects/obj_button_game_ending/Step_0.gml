if room == r_game_ending && obj_talking_ballon.text_now = global.death_lines.game_ending[1] && obj_talking_ballon.frase_index >= array_length(obj_talking_ballon.text_now)-1 && obj_talking_ballon.baloon_state == "done"{

	image_alpha = 1

}else 

{
	image_alpha = 0

}