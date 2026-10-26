if global.current_game_state == GAMESTATES.gambling{
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.counting{
		if obj_roll_again_use.using == true{

			if d_type == "d1"{
			
				GENERAL.dice_1_value = ceil(random_range(0,6))
				image_index = define_dice_face(GENERAL.dice_1_value)
				

			
			}
			
			else if d_type == "d2"{
			
				GENERAL.dice_2_value = ceil(random_range(0,6))
				
				image_index = define_dice_face(GENERAL.dice_2_value)

			
			}
				GENERAL.combine_dice_value = GENERAL.dice_1_value+GENERAL.dice_2_value
				obj_roll_again_use.using = false
				obj_roll_again_use.aready_used = false
				GENERAL.current_dice_game_state = DICE_GAME_STATES.ending


		}
	}
}