switch (global.current_game_state){

		case GAMESTATES.gambling:
		
	y--

	switch (b_type){

		case ADD_BUTTON_TYPES.plus_1:
	
			if global.death_coins-GENERAL.extra_money_adding > 0{

				GENERAL.extra_money_adding++
			}
	
		break;
	
		case ADD_BUTTON_TYPES.plus_10:
	
			if global.death_coins-GENERAL.extra_money_adding > 0{
	
				GENERAL.extra_money_adding+=10
			}
	
		break;
	
		case ADD_BUTTON_TYPES.plus_100:
	
			if global.death_coins-GENERAL.extra_money_adding > 0{
	
				GENERAL.extra_money_adding+=100
		
			}
	
		break;
	
			case ADD_BUTTON_TYPES.plus_1000:
	
			if global.death_coins-GENERAL.extra_money_adding > 0{
	
				GENERAL.extra_money_adding+=1000
		
			}
	
		break;
	
		case ADD_BUTTON_TYPES.reset:
	
			GENERAL.extra_money_adding=0
	
		break;
	
		case ADD_BUTTON_TYPES.add:
	
			GENERAL.current_money_added+=GENERAL.extra_money_adding
			GENERAL.extra_money_adding=0
	
		break;
	}
	

break;

case GAMESTATES.intro:
	image_alpha =0
break

}