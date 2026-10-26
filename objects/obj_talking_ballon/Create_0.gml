

if global.current_game_state= GAMESTATES.intro && global.intro_speak_fase== INTRO_FASES.presentation{

	text_now = global.death_lines.intro

}




else if global.current_game_state= GAMESTATES.intro && global.intro_speak_fase== INTRO_FASES.tutorial  {

	text_now = global.death_lines.tutorial.death

}else if global.current_game_state= GAMESTATES.game_ending_hell{

	text_now = global.death_lines.game_ending_hell

} else if global.current_game_state= GAMESTATES.game_ending_heaven{

	timmer_heaven = 120
	text_now = [
	
		"man...",
		
		"This gonna take forever"
	
	]


}

 else if global.current_game_state= GAMESTATES.game_ending && room == r_game_ending{


	text_now = global.death_lines.game_ending[1]


}
 else if global.current_game_state= GAMESTATES.game_ending_earth{

	timmer_heaven = 120
	text_now = [
	
		"man...",
		
		"This sucks"
	
	]


}else{

text_now =[]
}

if global.current_game_state= GAMESTATES.intro && global.intro_speak_fase== INTRO_FASES.logo{

	instance_destroy(self)

}




if array_length(text_now)>0 {

	now_frase = text_now[0]

}else {
	
	now_frase = ""

}


local_choose = ""
letter_index = 0
frase_index = 0
timmer_text = 2
frase_exposed = ""

baloon_state = "written"