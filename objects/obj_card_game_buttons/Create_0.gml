
	
				enum CARD_B_TYPES{

					bet,
					hit,
					done

				}

				switch (b_type){

					case CARD_B_TYPES.bet:
						image_xscale = (string_width("Bet")+(2*8))/sprite_get_width(spr_card_game_button) 
					break
	
					case CARD_B_TYPES.hit:
							image_xscale = (string_width("Hit me")+(2*8))/sprite_get_width(spr_card_game_button) 
					break
	
					case CARD_B_TYPES.done:
						image_xscale = (string_width("Check")+(2*8))/sprite_get_width(spr_card_game_button) 
					break


				}
			
		