	if room == r_game_ending && obj_talking_ballon.text_now = global.death_lines.game_ending[1] && obj_talking_ballon.frase_index >= array_length(obj_talking_ballon.text_now)-1 && obj_talking_ballon.baloon_state == "done"{
	
	draw_self()
		
			draw_set_alpha(image_alpha)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)

			switch (b_type){
				
			case "down":
				draw_text(x,y,"Go 'Down There'")
			break
	
			case "up":
					draw_text(x,y,"Go 'up There'")
			break
			
			case "earth":
					draw_text(x,y,"Another chance")
			break

			}
			draw_set_alpha(1)
			draw_set_halign(fa_right)
			draw_set_valign(fa_top)
			draw_set_font(-1)
			
	}