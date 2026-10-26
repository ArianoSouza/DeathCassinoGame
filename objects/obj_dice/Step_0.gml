if global.current_game_state == GAMESTATES.gambling{
		if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.rolling{
	
		image_alpha = 1
		image_speed = 1
	
		switch (d_type){
			case "d1":
				if GENERAL.dice_1_value == 0{

					sprite_index = spr_dice_rolling
		
				}else{
					image_speed = 0
					sprite_index =spr_dice
					image_index = define_dice_face(GENERAL.dice_1_value)
			
				}
			break;
		
			case "d2":
				if GENERAL.dice_2_value == 0{

						sprite_index = spr_dice_rolling
		
				}else{
					image_speed = 0
					sprite_index =spr_dice
					image_index = define_dice_face(GENERAL.dice_2_value)
			
				}
			break;
		}


	} else if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.counting {

		if d_type == "d2"{image_index = define_dice_face(GENERAL.dice_2_value); sprite_index =spr_dice}
		image_alpha = 1

	}  else if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.ending{

		image_alpha = 1

	}
	else {
		
		image_alpha = 0
	
	}
} else {

	image_alpha = 0

}
