draw_self()



switch (global.current_game_state){
	
	case GAMESTATES.gambling:

		draw_set_font(f_mine)


		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)

		switch (b_type){

			case ADD_BUTTON_TYPES.plus_1:
				draw_text_ext_transformed(x,y,"+1",0,100,0.5,0.5,0)
			break;
	
			case ADD_BUTTON_TYPES.plus_10:
				draw_text_ext_transformed(x,y,"+10",0,100,0.5,0.5,0)
			break;
	
			case ADD_BUTTON_TYPES.plus_100:
				draw_text_ext_transformed(x,y,"+100",0,100,0.5,0.5,0)
			break;
			case ADD_BUTTON_TYPES.plus_1000:
				draw_text_ext_transformed(x,y,"+1000",0,100,0.4,0.4,0)
			break;
	
			case ADD_BUTTON_TYPES.reset:
			break;
	
			case ADD_BUTTON_TYPES.add:
				draw_text_ext_transformed(x,y-7,"+",0,100,1,1,0)
			break;


		}

		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_font(-1)
		
		break;
	}
	

