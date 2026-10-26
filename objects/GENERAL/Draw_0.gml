draw_self()


switch (global.current_game_state){
	
	
	case GAMESTATES.intro:

	
		if global.intro_speak_fase == INTRO_FASES.logo{
		
			draw_set_font(f_kiwi)
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
			
			draw_text_transformed(640,300,"Death",3,3,0)
			draw_text_transformed(640,360,"Cassino",3,3,0)
			
			draw_set_halign(fa_center)
			draw_set_valign(fa_top)
			draw_set_font(-1)
			
		
		}
		
		if global.intro_speak_fase == INTRO_FASES.tutorial{
		
			if instance_exists(obj_talking_ballon_dealer){

				}
		}
	
	break;

	
	case GAMESTATES.gambling:
		
		draw_set_font(f_mine)
		draw_text(camera_get_view_x(view_camera[0])+450,camera_get_view_y(view_camera[0])+320,"D$ "+string_thousands(ceil(global.death_coins)))
		draw_text_transformed(camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+10,"To save and exit hold ESC",0.5,0.5,0)
		
		if timer_exit_game >0 && timer_exit_game <=60 {
		
			draw_sprite_ext(spr_scull_bye,0,camera_get_view_x(view_camera[0])+122,camera_get_view_y(view_camera[0])+13,0.4,0.4,0,c_white,1)
		}else if 	timer_exit_game >60 && timer_exit_game <=120{
		
		
			draw_sprite_ext(spr_scull_bye,1,camera_get_view_x(view_camera[0])+122,camera_get_view_y(view_camera[0])+13,0.4,0.4,0,c_white,1)

		
		}
		
		if global.plushie = true{
		
			draw_sprite_ext(spr_shop_item,4,camera_get_view_x(view_camera[0])+50,camera_get_view_y(view_camera[0])+280,0.5,0.5,0,c_white,1)
		
		}
		
		if global.item_divine_intervention{
		
			draw_sprite_ext(spr_shop_item,3,camera_get_view_x(view_camera[0])+75,camera_get_view_y(view_camera[0])+280,0.5,0.5,0,c_white,1)
		
		}

		if current_position == GAMES.cards {
			
			var card_percent = current_card_bet_percent,
				card_value_calculated = (((global.death_coins*card_percent)/100)-(((global.death_coins*card_percent)/100)*discount))
	
				draw_set_halign(fa_left)
				draw_set_valign(fa_middle)
				draw_text_transformed(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+30,"Current Bet: D$ "+string_thousands(ceil(card_value_calculated+current_money_added)),0.8,0.8,0)
				draw_set_colour(c_gray)
				draw_text_transformed(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+45,"Minimal value: "+string(ceil(card_percent))+"%",0.7,0.7,0)
				draw_set_colour(c_white)
				draw_set_halign(fa_left)
				draw_set_colour(make_colour_rgb(130,182,161))
				draw_text_transformed(camera_get_view_x(view_camera[0])+420,camera_get_view_y(view_camera[0])+60,"Add your own: D$ "+string_thousands(extra_money_adding),0.8,0.8,0)
				draw_set_colour(make_colour_rgb(120,69,66))
				draw_text_transformed(camera_get_view_x(view_camera[0])+220,camera_get_view_y(view_camera[0])+120,"Dealer points: "+string(current_dealers_cards_points),0.8,0.8,0)
				draw_set_colour(c_white)
				draw_text_transformed(camera_get_view_x(view_camera[0])+220,camera_get_view_y(view_camera[0])+180,"Your points: "+string(current_card_points),0.8,0.8,0)
				draw_set_halign(fa_left)
				draw_set_valign(fa_top)
				draw_set_font(-1)


			if current_card_game_state = CARDS_GAME_STATES.player_turn || CARDS_GAME_STATES.dealer_turn {
	
				distance = 0
				if (current_player_card_sequence!= []){
					for(var i=0; i<array_length(current_player_card_sequence); i++){
						draw_sprite(spr_card,draw_card(current_player_card_sequence[i]),855+ distance,205)
						distance+= 16
					}
				}

			}

			if current_card_game_state =  CARDS_GAME_STATES.dealer_turn || CARDS_GAME_STATES.counting {
	
				distance_dealer = 0
	
				if (current_dealers_cards != []){
					for(var i=0; i<array_length(current_dealers_cards); i++){
						draw_sprite(spr_card,draw_card(current_dealers_cards[i]),855+ distance_dealer,145)
						distance_dealer+= 16
					}
				}

			}
	
		}


		///// DICE


		if current_position == GAMES.dice {
	
			var dice_percent = (tentativa_dado*2)+dice_value_bet,
				dice_value_calculated = (((global.death_coins*dice_percent)/100)-(((global.death_coins*dice_percent)/100)*discount))
			draw_set_font(f_mine)
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_text_transformed(420,390,"Current Bet: D$ "+string_thousands(ceil(dice_value_calculated+current_money_added)),0.8,0.8,0)
			draw_set_colour(c_gray)
			draw_text_transformed(420,405,"Minimal value: "+string(ceil(dice_percent))+"%",0.7,0.7,0)
			draw_set_colour(c_white)
			draw_set_halign(fa_left)
			draw_set_colour(make_colour_rgb(130,182,161))
			draw_text_transformed(420,420,"Add your own: D$ "+string_thousands(extra_money_adding),0.8,0.8,0)
			draw_set_colour(c_white)
			draw_set_font(f_kiwi)
			draw_text_transformed(310,640,dice_bet,2,2,0)
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(-1)

		}


		draw_set_font(f_mine)
		draw_set_halign(fa_right)


		if current_position == GAMES.roullet  {
			draw_set_font(f_mine)
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_text_transformed(camera_get_view_x(view_camera[0])+450,camera_get_view_y(view_camera[0])+40,"Current Bet: D$ "+string_thousands(ceil(current_money_added)),0.8,0.8,0)
			draw_set_colour(make_colour_rgb(130,182,161))		
			draw_text_transformed(camera_get_view_x(view_camera[0])+450,camera_get_view_y(view_camera[0])+55,"Add your own: D$ "+string_thousands(extra_money_adding),0.8,0.8,0)
			draw_set_colour(c_white)
			draw_set_halign(fa_left)
			draw_set_colour(c_white)
			draw_set_font(f_kiwi)
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(f_mine)
			draw_text_transformed(camera_get_view_x(view_camera[0])+450,camera_get_view_y(view_camera[0])+70,"Prize: "+prize_roullet,0.8,0.8,0)


		}


		// DEATH COIN CHANGES
		if plus_deathcoins>0{
	
			draw_text_transformed_color(camera_get_view_x(view_camera[0])+540,camera_get_view_y(view_camera[0])+305,"+"+string_thousands(ceil(plus_deathcoins)),0.8,0.8,0,c_gray,c_gray,c_gray,c_gray,1)

		}else if plus_deathcoins<0{

			draw_text_transformed_color(camera_get_view_x(view_camera[0])+540,camera_get_view_y(view_camera[0])+305,string_thousands(ceil(plus_deathcoins)),0.8,0.8,0,c_gray,c_gray,c_gray,c_gray,1)

		}
		draw_set_halign(fa_left)
		draw_set_font(-1)
		
	break;
	
	


}

