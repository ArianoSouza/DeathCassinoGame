if global.current_game_state == GAMESTATES.gambling{
	y--
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.pregame{

		GENERAL.current_dice_game_state = DICE_GAME_STATES.rolling
	


	}
} else if global.current_game_state == GAMESTATES.gambling{

	image_alpha = 0

}
