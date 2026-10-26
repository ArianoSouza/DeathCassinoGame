image_speed =0

switch (global.current_game_state){
	
		case GAMESTATES.gambling:


		enum ADD_BUTTON_TYPES{

			plus_1,
			plus_10,
			plus_100,
			plus_1000,
			reset,
			add


		}

	

		switch (b_type){

			case ADD_BUTTON_TYPES.plus_1:
			case ADD_BUTTON_TYPES.plus_10:
			case ADD_BUTTON_TYPES.plus_100:
			case ADD_BUTTON_TYPES.plus_1000:
				sprite_index = spr_add_money_button
			break;
	
			case ADD_BUTTON_TYPES.reset:
				sprite_index = spr_button_dice_reset_add
				image_index = 1
			break;
	
			case ADD_BUTTON_TYPES.add:
				sprite_index = spr_button_dice_reset_add
				image_index = 0
			break;
		}
		
		break;
		
		case GAMESTATES.intro:
			image_alpha = 0
		break
		

}