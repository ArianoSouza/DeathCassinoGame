
switch (global.current_game_state){
	
		case GAMESTATES.gambling:
		
			if instance_exists(GENERAL){
			y--
			switch (b_type){
	
				// SE NÃO TIVER NO PRE GAME NADA ACONTECE

				case CARD_B_TYPES.bet:
	
				if (GENERAL.current_card_game_state != CARDS_GAME_STATES.pre_game){
		
		
	
				} else{
					// PEGA UMA CARTA PRA SI
					GENERAL.current_card_holded = GENERAL.card_sequence[0]
					if !(instance_exists(obj_personal_card)){
					
						instance_create_layer(956,330,"instances",obj_personal_card)
					
					}
					obj_personal_card.card_type = GENERAL.current_card_holded
					array_delete(GENERAL.card_sequence,0,1)
					// PEGA A PRIMEIRA CARTA DA MESA
					array_push(GENERAL.current_player_card_sequence,GENERAL.card_sequence[0])
					array_delete(GENERAL.card_sequence,0,1)
					// DEFINE OS PONTOS INICIAIS
					GENERAL.current_card_points = define_card_point(GENERAL.current_player_card_sequence)
					GENERAL.current_card_game_state = CARDS_GAME_STATES.player_turn
	
				}
		
				break
	
				case CARD_B_TYPES.hit:
				// SE NÃO TIVER NO NO TURNO DO JOGADOR NADA ACONTECE 
					if (GENERAL.current_card_game_state != CARDS_GAME_STATES.player_turn){
		
		
	
					} else{
					// SE OS PONTOS FOREM MENOS DE 21
						if GENERAL.current_card_points < 21{
					// PEGA UMA CARTA E DESCARTA A CARTA DO DECK
							array_push(GENERAL.current_player_card_sequence,GENERAL.card_sequence[0])
							array_delete(GENERAL.card_sequence,0,1)
							audio_play_sound(choose(flip_card,flip_card_2),11,0)
							// SOMA OS PONTOS
							GENERAL.current_card_points = define_card_point(GENERAL.current_player_card_sequence)
						}
	
					}
		
				break;
	
				case CARD_B_TYPES.done:
	
					if (GENERAL.current_card_game_state != CARDS_GAME_STATES.player_turn){
						
						
				} else{
				// SE FOR MENOS DE 21 E QUISER PARA PODE
					if GENERAL.current_card_points < 21{
						audio_play_sound(knock,12,0)
						GENERAL.current_card_game_state = CARDS_GAME_STATES.dealer_turn
						
					}
	
				}
			}
		
				break;
			}
			
		break;


}