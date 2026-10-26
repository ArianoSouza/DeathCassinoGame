
switch (global.current_game_state){
	
	case GAMESTATES.gambling:
	
		y--
		if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.pregame{


			switch (b_type){

			case "up":
				if GENERAL.dice_bet < 12{
					GENERAL.dice_bet+=1
				} 
	
			break;
	
			case "down":
				if GENERAL.dice_bet > 2{
					GENERAL.dice_bet-=1
				} 
			break;


		}
		}
		
		break;


}