if global.current_game_state == GAMESTATES.gambling{

if instance_exists(GENERAL){
if GENERAL.current_card_game_state == CARDS_GAME_STATES.player_turn{
	
	
	change_card_holded(card_type)
	
}
}

if card_type = noone{

	image_alpha = 0

}else{

	image_alpha = 1

}
}else {

	image_alpha = 0

}