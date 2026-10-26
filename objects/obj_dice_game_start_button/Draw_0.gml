if global.current_game_state == GAMESTATES.gambling{
	
	if instance_exists(GENERAL){
	if GENERAL.current_position == GAMES.dice && GENERAL.current_dice_game_state == DICE_GAME_STATES.pregame{

		draw_self()

		draw_set_alpha(image_alpha)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(f_mine)

		draw_text_transformed(x,y,"Bet",1,1,0)

		draw_set_font(-1)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_alpha(1)
	}
	}
}
