switch (global.current_game_state){
	
		case GAMESTATES.gambling:
		
			draw_self()
		
			draw_set_alpha(image_alpha)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)

			switch (b_type){

				case CARD_B_TYPES.bet:
					draw_text(x,y,"Bet")
				break
	
				case CARD_B_TYPES.hit:
					draw_text_transformed(x,y,"Hit me",0.8,0.8,0)
				break
	
				case CARD_B_TYPES.done:
					draw_text(x,y,"Check")
				break


			}
			draw_set_alpha(1)
			draw_set_halign(fa_right)
			draw_set_valign(fa_top)
			draw_set_font(-1)
		
		break;
				
	}
		
		
