
y--
if global.current_game_state == GAMESTATES.gambling{
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.counting{

		
		GENERAL.current_dice_game_state = DICE_GAME_STATES.ending


	}
} 
