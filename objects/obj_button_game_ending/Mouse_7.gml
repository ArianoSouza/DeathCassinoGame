if room == r_game_ending && obj_talking_ballon.text_now = global.death_lines.game_ending[1] && obj_talking_ballon.frase_index >= array_length(obj_talking_ballon.text_now)-1 && obj_talking_ballon.baloon_state == "done"{
	y--
switch (b_type){

			case "down":
				obj_talking_ballon.text_now = global.death_lines.game_ending[2]
				obj_talking_ballon.baloon_state = "written"
				obj_talking_ballon.frase_index = 0
				obj_talking_ballon.letter_index = 0
				obj_talking_ballon.frase_exposed = ""
				obj_talking_ballon.now_frase = obj_talking_ballon.text_now[0]
				obj_talking_ballon.local_choose = "down"
			break
	
			case "up":
			obj_talking_ballon.text_now = global.death_lines.game_ending[2]
				obj_talking_ballon.baloon_state = "written"
				obj_talking_ballon.frase_index = 0
				obj_talking_ballon.letter_index = 0
				obj_talking_ballon.frase_exposed = ""
				obj_talking_ballon.now_frase = obj_talking_ballon.text_now[0]
				obj_talking_ballon.local_choose = "up"
			break
			
			case "earth":
				obj_talking_ballon.text_now = global.death_lines.game_ending[2]
				obj_talking_ballon.baloon_state = "written"
				obj_talking_ballon.frase_index = 0
				obj_talking_ballon.letter_index = 0
				obj_talking_ballon.frase_exposed = ""
				obj_talking_ballon.now_frase = obj_talking_ballon.text_now[0]
				obj_talking_ballon.local_choose = "earth"
			break


	}
}