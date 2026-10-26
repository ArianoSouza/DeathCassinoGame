switch (global.current_game_state){
	
		case GAMESTATES.gambling:
	
	if instance_exists(GENERAL){
	if GENERAL.current_position = GAMES.roullet{
		if (GENERAL.current_roullet_game_state != ROULLET_GAME_STATES.pregame){
			
			image_alpha = 0

			} else{
	
			image_alpha = 1
	
			}
	}
	}
		
		
		break;
		
			case GAMESTATES.intro:
			case GAMESTATES.gameover:
			case GAMESTATES.game_ending:
			
			image_alpha = 0
			
		break
			
}
