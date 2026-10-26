if global.current_game_state == GAMESTATES.gambling{

	image_alpha = 1
		if instance_exists(GENERAL){
	if GENERAL.current_position == GAMES.cards{
	
		if GENERAL.current_card_game_state == CARDS_GAME_STATES.counting{
		
			if instance_exists(other_card){
				instance_destroy(obj_personal_card)
			}
			
			aready_use = false
		}
	
		}
	}
	

}

else{

	image_alpha = 0

}