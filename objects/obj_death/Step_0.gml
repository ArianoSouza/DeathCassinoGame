if global.current_game_state == GAMESTATES.intro{
		image_alpha = 1
		if global.intro_speak_fase == INTRO_FASES.logo{
	
			image_alpha = 0

		}
		else if global.intro_speak_fase == INTRO_FASES.presentation {
			image_alpha =1
			if obj_talking_ballon.frase_index == 0{
			
				image_index = 2
			
			}
			else if obj_talking_ballon.frase_index%6 == 0{
			
				image_index = 5
			
			}else {
			
				image_index = 0
			
			}
		
		
		}
		else if global.intro_speak_fase == INTRO_FASES.tutorial {
			image_alpha =1
			if obj_talking_ballon.frase_index == 0{
			
				image_index = 2
			
			}
			else if obj_talking_ballon.frase_index%6 == 0{
			
				image_index = 5
			
			}else {
			
				image_index = 0
			
			}
		
		
		}
}else if global.current_game_state == GAMESTATES.game_ending || global.current_game_state == GAMESTATES.gameover  {

	image_alpha = 1

} else{

image_alpha =0

}


