 
 switch global.current_game_state{
 
	case GAMESTATES.intro:
	
		switch global.intro_speak_fase{
		
		case INTRO_FASES.tutorial:
		
		
				if obj_talking_ballon.frase_index == 15 || obj_talking_ballon.frase_index == 28{			
			
					if frase_index < array_length(text_now)-1 {
				
						if baloon_state == "done"{
							frase_index++
							frase_exposed = ""
							letter_index = 0
							now_frase = text_now[frase_index]
							baloon_state = "written"
						}}
			

					} else {
					
					
					}
		
		break;
		
		
		}
	
	break;
 
 
 }