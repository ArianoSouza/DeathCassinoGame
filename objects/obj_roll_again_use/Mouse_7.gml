if global.current_game_state == GAMESTATES.gambling{
	
	image_blend = c_white
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.counting{

		
		if global.extra_dice >0 && using== false && aready_used == false{
		
	
				using = true
				aready_used = true
				global.extra_dice--
		
			}


	}
} 