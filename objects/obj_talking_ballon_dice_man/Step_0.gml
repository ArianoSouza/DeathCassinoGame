
if global.current_game_state == GAMESTATES.intro{

	if global.intro_speak_fase == INTRO_FASES.tutorial{
			if obj_talking_ballon.frase_index == 32 || obj_talking_ballon.frase_index == 34 || obj_talking_ballon.frase_index == 35 || obj_talking_ballon.frase_index == 36 || obj_talking_ballon.frase_index == 37 || obj_talking_ballon.frase_index == 39{
				image_alpha = 1
			}else{
				
				image_alpha = 0
			
			}

	}
	
	if baloon_state= "written"{
		

		
		if letter_index <= string_length(now_frase){
		
		timmer_text--
			
			if timmer_text < 0{
		
					if GENERAL.current_position == GAMES.dice && (obj_talking_ballon.frase_index == 32 || obj_talking_ballon.frase_index == 34 || obj_talking_ballon.frase_index == 35 || obj_talking_ballon.frase_index == 36 || obj_talking_ballon.frase_index == 37 || obj_talking_ballon.frase_index == 39){
				
					if letter_index%2 = 0 && letter_index < (string_length(now_frase)/5)*4{
						audio_play_sound(pam,1,0)
					}

					if letter_index%3 = 0 && letter_index < (string_length(now_frase)/5)*4{
					audio_play_sound(pam_2,1,0)
				
					}
				
				}
		
				frase_exposed = string_copy(now_frase,0,letter_index)
				letter_index++
				timmer_text = 2
		
			}
			
		}else{
		
			baloon_state = "done"
		
		}
	
	
	
	}

}
else{
		image_alpha = 0
	}



