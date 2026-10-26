
if global.current_game_state == GAMESTATES.gambling{

	y--
	switch (b_type){

		case GAMES.roullet:
		camera_set_view_pos(view_camera[0],global.visor_position.roullet.c_x,global.visor_position.roullet.c_y)
		GENERAL.current_card_game_state = CARDS_GAME_STATES.disable
		GENERAL.current_dice_game_state = DICE_GAME_STATES.disable
		GENERAL.current_roullet_game_state = ROULLET_GAME_STATES.disable
		GENERAL.current_position=GAMES.roullet
		break;
	
		case GAMES.cards:
		camera_set_view_pos(view_camera[0],global.visor_position.cards.c_x,global.visor_position.cards.c_y)
		GENERAL.current_card_game_state = CARDS_GAME_STATES.disable
		GENERAL.current_dice_game_state = DICE_GAME_STATES.disable
		GENERAL.current_roullet_game_state = ROULLET_GAME_STATES.disable
		GENERAL.current_position=GAMES.cards
		break;
	
		case GAMES.dice:
		camera_set_view_pos(view_camera[0],global.visor_position.dice.c_x,global.visor_position.dice.c_y)
		GENERAL.current_card_game_state = CARDS_GAME_STATES.disable
		GENERAL.current_dice_game_state = DICE_GAME_STATES.disable
		GENERAL.current_roullet_game_state = ROULLET_GAME_STATES.disable
		GENERAL.current_position=GAMES.dice
		break;
	
		case GAMES.shop:
		camera_set_view_pos(view_camera[0],global.visor_position.shop.c_x,global.visor_position.shop.c_y)
		GENERAL.current_card_game_state = CARDS_GAME_STATES.disable
		GENERAL.current_dice_game_state = DICE_GAME_STATES.disable
		GENERAL.current_roullet_game_state = ROULLET_GAME_STATES.disable
		GENERAL.current_position=GAMES.shop
		break;


	}
}