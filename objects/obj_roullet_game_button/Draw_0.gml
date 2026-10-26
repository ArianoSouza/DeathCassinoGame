
switch (global.current_game_state){
	
		case GAMESTATES.gambling:
			draw_self()

			draw_set_alpha(image_alpha)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)

			draw_text(x,y,"Spin the Wheel")

			draw_set_alpha(1)
			draw_set_halign(fa_right)
			draw_set_valign(fa_top)
			draw_set_font(-1)
			
			break;
}