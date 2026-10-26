
if global.current_game_state == GAMESTATES.gambling{
	image_blend = c_white
	
	if GENERAL.current_position == GAMES.cards{

		if GENERAL.current_card_game_state == CARDS_GAME_STATES.player_turn{

			if global.litte_wink > 0{
		
				if array_length(GENERAL.card_sequence)>0{
				
					array_delete(GENERAL.current_player_card_sequence,array_length(GENERAL.current_player_card_sequence)-1,1)
					GENERAL.current_card_points = define_card_point(GENERAL.current_player_card_sequence)
					global.litte_wink--
				
				}
					
			}
		}
	
	}
}