if global.current_game_state == GAMESTATES.gambling{


	if GENERAL.current_card_game_state == CARDS_GAME_STATES.player_turn{
	
	

	if GENERAL.current_card_points < 21{
	// PEGA UMA CARTA E DESCARTA A CARTA DO DECK
			array_push(GENERAL.current_player_card_sequence,card_type)
			GENERAL.current_card_holded = noone
			card_type = noone
			// SOMA OS PONTOS
			GENERAL.current_card_points = define_card_point(GENERAL.current_player_card_sequence)

	}
}
}else if global.current_game_state == GAMESTATES.intro{

	image_alpha = 0


}