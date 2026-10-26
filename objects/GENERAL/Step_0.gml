



switch (global.current_game_state){
	
	case GAMESTATES.gambling:
	
	if keyboard_check(vk_escape){
	
		timer_exit_game++
		
		if timer_exit_game>120{
			
			if (file_exists("game_saved.sav")){
				
				ini_open("game_saved.sav");


				// SAVE COINS AND INTENS
				ini_write_real("game_stats","current_death_coins",global.death_coins)
				ini_write_real("game_itens","extra_dice",global.extra_dice)
				ini_write_real("game_itens","extra_card",global.item_extra_card)
				ini_write_real("game_itens","litte_wink",global.litte_wink)
				ini_write_real("game_itens","divine_intervention",global.item_divine_intervention)
				ini_write_real("game_itens","plushie",global.plushie)

				// SAVE GAME STATE

				ini_write_real("game_stats","arready_started",1)

				ini_close()
			}
			game_end()
		}
		
		}else{
		
		timer_exit_game = 0
	}
	
	// game over
	if global.death_coins <= 0{
		
		if global.item_divine_intervention == false{

			audio_stop_all()
			obj_talking_ballon.text_now = global.death_lines.gameover[floor(random_range(0, (array_length(global.death_lines.gameover)-1)))]
			obj_talking_ballon.baloon_state = "written"
			obj_talking_ballon.frase_index = 0
			obj_talking_ballon.frase_exposed = ""
			obj_talking_ballon.now_frase = obj_talking_ballon.text_now[obj_talking_ballon.frase_index]
			global.current_game_state = GAMESTATES.gameover
			
		}else{
		
			global.item_divine_intervention = 0
			global.death_coins = 5000
		
		}
		
	}

	//game win
	if global.death_coins >= 1000000 {
		audio_stop_all()
		obj_talking_ballon.text_now = global.death_lines.game_ending[0]
		obj_talking_ballon.baloon_state = "written"
		obj_talking_ballon.frase_index = 0
		obj_talking_ballon.frase_exposed = ""
		obj_talking_ballon.now_frase = obj_talking_ballon.text_now[obj_talking_ballon.frase_index]
		global.current_game_state = GAMESTATES.game_ending

	}
	
	
	// ITENS CONFIGURATIONS
	
	if global.plushie == true{
	
		discount = 0.25
	
	}else{
	
		discount = 0
	
	}
	


// PLUS DEATHCOINS
	if plus_deathcoins!=0{
	
		timmer_plus_deathcoins--
		
		if timmer_plus_deathcoins<0{
		
			timmer_plus_deathcoins =180
			plus_deathcoins =0
				
		}
	
	
	}
	
// MAQUINA DE ESTADOS DE CADA JOGO SE PRECISAR
switch (current_position){

	case GAMES.roullet:
	
	switch (current_roullet_game_state){
	
		case ROULLET_GAME_STATES.disable:
		
			current_roullet_bet = 0
			current_roullet_spot = 0
			roullet_op_force = 0
			roullet_current_prize = 0
			roullet_force_spin = random_range(360,720)
			current_money_added = 0
			extra_money_adding = 0
			current_roullet_game_state = ROULLET_GAME_STATES.pregame
		
		break;
		
		case ROULLET_GAME_STATES.pregame:
		
			current_roullet_bet = current_money_added
			current_roullet_spot = 0
			roullet_op_force = 0
			roullet_current_prize = 0
		
		break;
		
		case ROULLET_GAME_STATES.rolling:
		 
			var proportion = (roullet_force_spin - roullet_op_force) / roullet_force_spin
			
			prize_roullet = ""
			
			obj_roullet.image_angle+=roullet_force_spin-roullet_op_force
			roullet_op_force += 10*proportion
		
			if roullet_op_force >= roullet_force_spin-0.1{
				
				roullet_force_spin = 0
				roullet_op_force = 0
				current_roullet_game_state = ROULLET_GAME_STATES.counting
			
			}
			
			if (obj_roullet.image_angle>365){
			
				obj_roullet.image_angle = 0
			
			}
			
			
		
		
		break;
		
		case ROULLET_GAME_STATES.counting:
		
		roullet_counting_timmer --
		
			if verify_prize(obj_roullet.image_angle) > 0{
				global.death_coins+=(verify_prize(obj_roullet.image_angle)-(verify_prize(obj_roullet.image_angle)*discount))
				plus_deathcoins = (verify_prize(obj_roullet.image_angle)-(verify_prize(obj_roullet.image_angle)*discount))
				obj_win.win_appear=true
				roullet_counting_timmer =180
				current_roullet_game_state = ROULLET_GAME_STATES.disable
				
			} 
			else if verify_prize(obj_roullet.image_angle) <=0{
				
				roullet_counting_timmer =180
				current_roullet_game_state = ROULLET_GAME_STATES.disable
			}
		
		break;
	
	}
	
	break;

		case GAMES.cards:
	

		switch(current_card_game_state){
	
			case CARDS_GAME_STATES.disable:
				tentativa_carta=1
				current_card_game_state = CARDS_GAME_STATES.pre_game
			break;

			case CARDS_GAME_STATES.pre_game:

				if tentativa_carta <= 10{
					
					current_card_bet_percent = 2+(tentativa_carta*2) 
					
				}else{
					
					current_card_bet_percent = 20
				}
			
		
			current_card_points = 0
			current_card_holded = noone
			current_player_card_sequence = []
			current_dealers_cards = []
			card_sequence = []
			card_sequence = define_card_sequence()
			current_dealers_cards = []
			current_dealers_cards_points = 0
		
			break;
			// TURNO DO JOGADOR
			case CARDS_GAME_STATES.player_turn:
		
			if card_sequence = []{
		
			card_sequence = define_card_sequence()
		
			}
			// PERDE O JOGO SE FICAR COM MAIS DE 21 AUTOMATICAMENTE
				if current_card_points > 21{
			
					current_card_game_state = CARDS_GAME_STATES.counting
			// SE FICAR COM 21 VAI DIRETO PRO TURNO DO DEALER
				}else if current_card_points == 21{
			
				current_card_game_state = CARDS_GAME_STATES.dealer_turn
			
				}
			

		
			break;
		
		// ------------------ TURNO DO DEALER   -----------------------------
			case CARDS_GAME_STATES.dealer_turn:
		
			if card_sequence = []{
		
			card_sequence = define_card_sequence()
		
			}
			// TIMER DE PUXAR A CARTA
			timer_dealer--
		
			if timer_dealer<0{
		// VERIFICA SE NA PROXIMA RODADA O VALOR SOMADO DAS CARTAS DA MAIS DE 21
				var _future_card_sequence = variable_clone(current_dealers_cards) 
			
				array_push(_future_card_sequence,GENERAL.card_sequence[0])
			
				var _future_card_points = define_card_point(_future_card_sequence)
				audio_play_sound(choose(flip_card,flip_card_2),11,0)
		// SE SIM, ELE PASSA O TURNO
				if _future_card_points > 21{
				
			
				current_card_game_state = CARDS_GAME_STATES.counting
				
				
			// SE NÃO ELE PEGA MAIS UMA CARTA
			
				} else{
					array_push(GENERAL.current_dealers_cards,GENERAL.card_sequence[0])
					array_delete(GENERAL.card_sequence,0,1)
					current_dealers_cards_points = define_card_point(GENERAL.current_dealers_cards)
					timer_dealer = 120
			
				}
			
		
			}
		
			break;
		
			case CARDS_GAME_STATES.counting:
			counting_timmer--
		
			if counting_timmer<0{
		
			if current_dealers_cards_points > current_card_points && current_dealers_cards_points != 0{
			
						plus_deathcoins =-ceil((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))
						global.death_coins-=ceil((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))
						tentativa_carta++
						current_card_points = 0
						current_card_holded = noone
						current_player_card_sequence = []
						current_dealers_cards = []
						card_sequence = define_card_sequence()
						current_dealers_cards = []
						current_dealers_cards_points = 0
						current_money_added =0 
						extra_money_adding =0
						counting_timmer = 120	
						current_card_game_state = CARDS_GAME_STATES.pre_game
					
			
					} else if current_dealers_cards_points == current_card_points && current_dealers_cards_points != 0{
						plus_deathcoins =-ceil(((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))/2)
						global.death_coins-=ceil(((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))/2)
						tentativa_carta++
						current_card_points = 0
						current_card_holded = noone
						current_player_card_sequence = []
						current_dealers_cards = []
						card_sequence = define_card_sequence()
						current_dealers_cards = []
						current_dealers_cards_points = 0
						current_money_added =0 
						extra_money_adding =0
						counting_timmer = 120	
						current_card_game_state = CARDS_GAME_STATES.pre_game
			
					}else if current_card_points > current_dealers_cards_points && current_dealers_cards_points != 0 {
					
						plus_deathcoins = ceil((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))*( current_card_points - current_dealers_cards_points )
						global.death_coins+=ceil((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added-(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))*( current_card_points - current_dealers_cards_points )
						obj_win.win_appear = true
						tentativa_carta++
						current_card_points = 0
						current_card_holded = noone
						current_player_card_sequence = []
						current_dealers_cards = []
						card_sequence = define_card_sequence()
						current_dealers_cards = []
						current_dealers_cards_points = 0
						current_money_added =0 
						extra_money_adding =0
						counting_timmer = 120	
						current_card_game_state = CARDS_GAME_STATES.pre_game
					}
						else if current_card_points > 21 && current_dealers_cards_points == 0 {
				
						global.death_coins-=ceil(calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added -(calculate_percentage(current_card_bet_percent,global.death_coins)*discount))
						plus_deathcoins =-ceil((calculate_percentage(current_card_bet_percent,global.death_coins)+current_money_added -(calculate_percentage(current_card_bet_percent,global.death_coins)*discount)))
						tentativa_carta++
						current_card_points = 0
						current_card_holded = noone
						current_player_card_sequence = []
						current_dealers_cards = []
						card_sequence = define_card_sequence()
						current_dealers_cards = []
						counting_timmer = 120	
						current_money_added =0 
						extra_money_adding =0
						current_dealers_cards_points = 0
						current_card_game_state = CARDS_GAME_STATES.pre_game
					
				
						}
				
			}
		
		
		
		
			break;
		}
	
		break;
	
		case GAMES.dice:
	
		switch (current_dice_game_state){
	
			case DICE_GAME_STATES.disable:
				tentativa_dado = 1
				dice_1_value = 0
				dice_2_value = 0
				combine_dice_value = 0
				extra_money_adding = 0
				current_money_added = 0
				dice_bet = 2
				current_dice_game_state = DICE_GAME_STATES.pregame
			break;
		
			case DICE_GAME_STATES.pregame:
			
			break;
		
			case DICE_GAME_STATES.rolling:
		
				dice_1_rolling_timmer--
				dice_2_rolling_timmer--
			
				if dice_1_rolling_timmer<0{
			
					dice_1_value = ceil(random_range(0,6))
					audio_play_sound(flip_card_2,14,0)
					dice_1_rolling_timmer =10000000000000000000000000000
			
				}
		
				if dice_2_rolling_timmer <0{
				
					dice_2_value = ceil(random_range(0,6))
					combine_dice_value = dice_1_value+dice_2_value
					audio_play_sound(flip_card_2,14,0)
					dice_1_rolling_timmer = 120
					dice_2_rolling_timmer = 180
					current_dice_game_state = DICE_GAME_STATES.counting
				}
			
			break;
		
			case DICE_GAME_STATES.counting:
		
			
		
			break;
		
			case DICE_GAME_STATES.ending:
		
				dice_counting_timmer--
			
				if dice_counting_timmer<0{
		
					plus_deathcoins = (dice_bet_verification(combine_dice_value,dice_bet,tentativa_dado,dice_value_bet,current_money_added) - (dice_bet_verification(combine_dice_value,dice_bet,tentativa_dado,dice_value_bet,current_money_added)*discount))
					global.death_coins +=(dice_bet_verification(combine_dice_value,dice_bet,tentativa_dado,dice_value_bet,current_money_added) - (dice_bet_verification(combine_dice_value,dice_bet,tentativa_dado,dice_value_bet,current_money_added)*discount))
			
			
					if dice_bet_verification(combine_dice_value,dice_bet,tentativa_dado,dice_value_bet,current_money_added)>0{
			
						obj_win.win_appear = true
			
					}
					dice_1_value = 0
					dice_2_value = 0
					combine_dice_value = 0
					dice_bet = 2
					tentativa_dado ++
					extra_money_adding = 0
					current_money_added = 0
					dice_counting_timmer = 180
					obj_roll_again_use.aready_used = false
					current_dice_game_state = DICE_GAME_STATES.pregame
				}
		
			break;
	
		}
	
		break;
	
		case GAMES.shop:
		break;



	}

	break;

		case GAMESTATES.intro:
			if global.intro_speak_fase = INTRO_FASES.logo{
		
				timing_logo--
			
				if timing_logo<=0 {
				
					audio_sound_gain(audio_intro,0.16)
					global.intro_speak_fase = INTRO_FASES.tutorial
					room_goto(r_main)
				
				
				
			
				}
				}
				else if global.intro_speak_fase = INTRO_FASES.tutorial
				{
				
					if obj_talking_ballon.frase_index < 14{
						camera_set_view_pos(view_camera[0],global.visor_position.roullet.c_x,global.visor_position.roullet.c_y)
						current_position = GAMES.roullet
				
					}else if obj_talking_ballon.frase_index >= 14 && obj_talking_ballon.frase_index < 31{
					camera_set_view_pos(view_camera[0],global.visor_position.cards.c_x,global.visor_position.cards.c_y)
						current_position = GAMES.cards
				
					}else if obj_talking_ballon.frase_index >= 31 && obj_talking_ballon.frase_index < 42{
					
						camera_set_view_pos(view_camera[0],global.visor_position.dice.c_x,global.visor_position.dice.c_y)
						current_position = GAMES.dice
				
					}else{
						camera_set_view_pos(view_camera[0],global.visor_position.roullet.c_x,global.visor_position.roullet.c_y)
						current_position = GAMES.roullet
				
					}
				
			
				}
				else if global.intro_speak_fase = INTRO_FASES.ending{
			
					global.current_game_state = GAMESTATES.gambling
			
				}
		
				break;
			
				case GAMESTATES.gameover:
				break;
			}
		
	
	


