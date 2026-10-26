if global.current_game_state == GAMESTATES.gambling{

if instance_exists(GENERAL){
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.pregame{


		image_alpha = 1


	}else{

		image_alpha = 0

	}
}
}else{

image_alpha=0

}