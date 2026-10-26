	draw_self()
		
			draw_set_alpha(image_alpha)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)

			switch (b_type){

				case "exit":
					draw_text(x,y,"Exit")
				break
	
				case "Go to menu":
					draw_text_transformed(x,y,"Go to menu",1,1,0)
				break

			}
			draw_set_alpha(1)
			draw_set_halign(fa_right)
			draw_set_valign(fa_top)
			draw_set_font(-1)