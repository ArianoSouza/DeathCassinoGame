randomise()

switch (global.current_game_state){
	
		case GAMESTATES.gambling:
			y--
	
			if (GENERAL.current_roullet_game_state != ROULLET_GAME_STATES.pregame){
		
		
	
			} else{
				global.death_coins-= GENERAL.current_roullet_bet
				GENERAL.plus_deathcoins = -GENERAL.current_roullet_bet
				GENERAL.roullet_force_spin = random_range(360,720)
				GENERAL.current_roullet_game_state = ROULLET_GAME_STATES.rolling
	
			}

		break;

}
	