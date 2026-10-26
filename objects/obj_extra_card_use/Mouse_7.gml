if global.current_game_state == GAMESTATES.gambling{
	image_blend = c_white
	
		if instance_exists(GENERAL){
	if GENERAL.current_position == GAMES.cards{

		if GENERAL.current_card_game_state == CARDS_GAME_STATES.player_turn{

			if global.item_extra_card > 0{
		
				if aready_use == false{
				
					other_card =instance_create_layer(990,340,"instances",obj_personal_card)
					other_card.card_type=card_sequence[floor(random_range(0,array_length(card_sequence)-1))]
					other_card.image_xscale = 1.5
					other_card.image_yscale = 1.5
					aready_use = true
					global.item_extra_card--
				}
					
			}
		}
	}
	}
}