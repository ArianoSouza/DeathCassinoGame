
switch (global.current_game_state){
	
		case GAMESTATES.gambling:

			switch (b_type){

				case CARD_B_TYPES.bet:
				if instance_exists(GENERAL){
				if (GENERAL.current_card_game_state != CARDS_GAME_STATES.pre_game){
			
					image_alpha = 0

					} else{
	
					image_alpha = 1
	
					}
				}
				break
	
				case CARD_B_TYPES.hit:
				if instance_exists(GENERAL){
					if (GENERAL.current_card_game_state != CARDS_GAME_STATES.player_turn){
			
						image_alpha = 0

					} else{
	
					image_alpha = 1
	
					}
				}
		
				break;
	
				case CARD_B_TYPES.done:
					if instance_exists(GENERAL){
					if (GENERAL.current_card_game_state != CARDS_GAME_STATES.player_turn){
			
						image_alpha = 0

					} else{
	
					image_alpha = 1
					}
					}
		
				break;


			}
		
		break;
		
		case GAMESTATES.game_ending:
		case GAMESTATES.gameover:
		case GAMESTATES.intro:
		
		image_alpha = 0
		
		break;
		
}