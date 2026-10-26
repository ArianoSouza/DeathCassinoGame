randomize()
	global.general_id = id

	current_position = GAMES.roullet

	extra_money_adding = 0
	current_money_added = 0
	timing_logo = 180
	timer_exit_game = 0

 
	

	//CURRENT GAME
	

	// AWAYS START ON ROULLET
	camera_set_view_pos(view_camera[0],global.visor_position.roullet.c_x,global.visor_position.roullet.c_y)


	//PLUS DEATH COINS
		plus_deathcoins = 0
		timmer_plus_deathcoins = 120

	// CARDS 
	enum CARDS_GAME_STATES{

		pre_game,
		player_turn,
		dealer_turn,
		counting,
		disable

	}

	card_sequence = define_card_sequence()

	current_card_game_state = CARDS_GAME_STATES.disable
	current_card_points = 0
	current_card_holded = noone
	current_card_bet_percent = 2
	current_player_card_sequence = []
	tentativa_carta = 1
	current_dealers_cards = []
	current_dealers_cards_points = 0
	timer_dealer = 60
	counting_timmer = 180

	// DICE


	enum DICE_GAME_STATES{

		pregame,
		rolling,
		counting,
		ending,
		disable

	}

	current_dice_game_state = DICE_GAME_STATES.disable
	dice_1_value = 0
	dice_2_value = 0
	combine_dice_value = 0
	dice_bet = 0
	tentativa_dado = 1
	dice_value_bet = 10
	dice_1_rolling_timmer = 120
	dice_2_rolling_timmer = 180
	dice_counting_timmer = 180


	function dice_bet_verification(dice_value,bet_value,tentativa,percent_bet,extra_money){


	if (bet_value-dice_value = 0 ){

		return ((global.death_coins*(percent_bet+(tentativa*2))/100)+extra_money)*4

	}

	else if (bet_value-dice_value = 1 || bet_value-dice_value = -1){

		return ((global.death_coins*(percent_bet+(tentativa*2))/100)+extra_money)*2

	}

	else if (bet_value-dice_value = 2 || bet_value-dice_value = -2){

		return ((global.death_coins*(percent_bet+(tentativa*2))/100)+extra_money)

	}
	else{

		return -((global.death_coins*(percent_bet+(tentativa*2))/100)+extra_money)

	}


	}

	// roullet


	enum ROULLET_GAME_STATES{

		pregame,
		rolling,
		counting,
		disable

	}

	enum ROULLET_PRIZES{

		plus_10,
		plus_100,
		plus_1000,
		item1,
		item2,
		item3,
		x2,
		x5,
		x10,
		x20,
		up,
		down

	}
	
	
	current_roullet_game_state = ROULLET_GAME_STATES.disable
	current_roullet_bet = 0
	current_roullet_spot = 0
	roullet_force_spin = random_range(360,720)
	roullet_op_force = 0
	roullet_current_prize = 0
	roullet_counting_timmer = 180
	prize_roullet = ""
	roullet_prizes_and_spots = {

		plus_10: {	min1:72,
					max1:108,
					min2:262.8,
					max2:298.8,
					min3:306,
					max3:363.2,
					prize:ROULLET_PRIZES.plus_10 },
				
		plus_100: {	min1:151.2,
					max1:205.2,
					prize:ROULLET_PRIZES.plus_100 },
				
		plus_1000:		{	min1:1.8,
							max1:39.6,
							prize:ROULLET_PRIZES.plus_1000 },
						
		item1: {	min1:39.6,
					max1:57.6,
					prize:ROULLET_PRIZES.item1 },
				
		item2: {	min1:115.2,
					max1:133.2,
					prize:ROULLET_PRIZES.item2 },
				
		item3: {	min1:241.2,
					max1:259.2,
					prize:ROULLET_PRIZES.item3 },
				
		x2: {	min1:133.2,
				max1:151.2,
				min2:219.6,
				max2:237.6,
				min3:205.2,
				max3:216,
				prize:ROULLET_PRIZES.x2 },
			
		x5: {	min1:57.6,
				max1:68.4,
				prize:ROULLET_PRIZES.x2 },
	
		x10: {	min1:108,
				max1:115.2,
				min2:298.8,
				max2:306,
				prize:ROULLET_PRIZES.x10 },
			
		x20: {	min1:259.2,
				max1:262.8,
				prize:ROULLET_PRIZES.x20 },
			
		up: {	min1:68.4,
				max1:72,
				min2:237.6,
				max2:241.2,
				prize:ROULLET_PRIZES.up },

		down: {	min1:-1.8,
				max1:1.8,
				min2:216,
				max2:219.6,
				prize:ROULLET_PRIZES.down }


	}

	function verify_prize(acctual_stop_point){

		 if (acctual_stop_point>= roullet_prizes_and_spots.plus_10.min1 && acctual_stop_point < roullet_prizes_and_spots.plus_10.max1){
			
			prize_roullet = "+10"
			return 10
 
		 }
		  if (acctual_stop_point>= roullet_prizes_and_spots.plus_10.min2 && acctual_stop_point < roullet_prizes_and_spots.plus_10.max2){
			
			prize_roullet = "+10"
			return 10
 
		 }
		 
		 if (acctual_stop_point>= roullet_prizes_and_spots.plus_10.min3 && acctual_stop_point < roullet_prizes_and_spots.plus_10.max3){
			
			prize_roullet = "+10"
			return 10
 
		 }
	 
		  if (acctual_stop_point>= roullet_prizes_and_spots.plus_100.min1 && acctual_stop_point < roullet_prizes_and_spots.plus_100.max1){
 
			prize_roullet = "+100"
			return 100
 
		 }
	 
		 if (acctual_stop_point>= roullet_prizes_and_spots.plus_1000.min1 && acctual_stop_point < roullet_prizes_and_spots.plus_1000.max1){
			
			prize_roullet = "+1000"
			return 1000
 
		 }
	 
		 if (acctual_stop_point>= roullet_prizes_and_spots.item1.min1 && acctual_stop_point < roullet_prizes_and_spots.item1.max1){
			
			prize_roullet = "+ Roll again"
			global.extra_dice++
			return 0
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.item2.min1 && acctual_stop_point < roullet_prizes_and_spots.item2.max1){
			
			prize_roullet = "+ Extra Card"
			global.item_extra_card++
			return 0
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.item3.min1 && acctual_stop_point < roullet_prizes_and_spots.item3.max1){
			
			prize_roullet = "+ Little wink"
			global.litte_wink++
			return 0
 
		 }
	 
		 if (acctual_stop_point>= roullet_prizes_and_spots.x2.min1 && acctual_stop_point < roullet_prizes_and_spots.x2.max1){
			
			prize_roullet = "X2"
			return current_roullet_bet*2
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.x2.min2 && acctual_stop_point < roullet_prizes_and_spots.x2.max2){
			
			prize_roullet = "x2"
			return current_roullet_bet*2
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.x2.min3 && acctual_stop_point < roullet_prizes_and_spots.x2.max3){
			
			prize_roullet = "x2"
			return current_roullet_bet*2
 
		 }
		  if (acctual_stop_point>= roullet_prizes_and_spots.x5.min1 && acctual_stop_point < roullet_prizes_and_spots.x5.max1){
			
			prize_roullet = "x5"
			return current_roullet_bet*5
 
		 }
	 
		 if (acctual_stop_point>= roullet_prizes_and_spots.x10.min1 && acctual_stop_point < roullet_prizes_and_spots.x10.max1){
			
			prize_roullet = "x10"
			return current_roullet_bet*10
 
		 }
		  if (acctual_stop_point>= roullet_prizes_and_spots.x10.min2 && acctual_stop_point < roullet_prizes_and_spots.x10.max2){
			
			prize_roullet = "x10"
			return current_roullet_bet*10
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.x20.min1 && acctual_stop_point < roullet_prizes_and_spots.x20.max1){
			
			prize_roullet = "x20"
			return current_roullet_bet*20
 
		 }
	 
		  if (acctual_stop_point>= roullet_prizes_and_spots.up.min1 && acctual_stop_point < roullet_prizes_and_spots.up.max1){
			
			
			prize_roullet = "Go 'Up There'"
			global.current_game_state = GAMESTATES.game_ending_heaven
			audio_stop_all()
			audio_play_sound(earth,55,1)
			room_goto(r_up)
			return 0
 
		 }
		 if (acctual_stop_point>= roullet_prizes_and_spots.up.min2 && acctual_stop_point < roullet_prizes_and_spots.up.max2){
			
			prize_roullet = "Go 'Up There'"
			audio_stop_all()
			audio_play_sound(earth,55,1)
			global.current_game_state = GAMESTATES.game_ending_heaven
			room_goto(r_up)
			return 0
 
		 }
	 
		 if (acctual_stop_point>= roullet_prizes_and_spots.down.min1 && acctual_stop_point < roullet_prizes_and_spots.up.max1){
 
			prize_roullet = "Go 'Down There'"
			audio_stop_all()
			audio_play_sound(h,55,1)
			global.current_game_state = GAMESTATES.game_ending_heaven
			room_goto(r_up)
			return 0
 
		 }
		  if (acctual_stop_point>= roullet_prizes_and_spots.down.min2 && acctual_stop_point < roullet_prizes_and_spots.up.max2){
			
			prize_roullet = "Go 'Down There'"
			audio_stop_all()
			audio_play_sound(h,55,1)
			global.current_game_state = GAMESTATES.game_ending_heaven
			room_goto(r_up)
			return 0
 
		 }
	 
	}

discount = 0


