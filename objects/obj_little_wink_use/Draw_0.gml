draw_self()

if global.current_game_state == GAMESTATES.gambling{


			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)
			
			if encosta = 1{	
				draw_set_alpha(0.3)
				draw_circle_colour(x-2,y,12,c_gray,c_gray,0)
				draw_set_alpha(1)
				draw_self()
			}
				
			
			draw_text_transformed(x+12,y,"x"+string(global.litte_wink),0.7,0.7,0)
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(-1)


}