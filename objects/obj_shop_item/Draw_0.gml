
 switch (global.current_game_state){
	
		case GAMESTATES.gambling:
			draw_self()


			
			
			if show_stats = true{
				draw_set_alpha(0.5)
				draw_circle_colour(x-2,y,20,c_gray,c_gray,1)
				draw_set_alpha(1)
				draw_self()
				draw_sprite_stretched(spr_bg_data,0,1140,420,130,150)
				draw_set_halign(fa_left)
				draw_set_valign(fa_top)
				draw_set_font(f_mine)
					draw_text_ext_transformed(1150,430,item_stats.name,20,50,0.8,0.8,0)
					draw_text_ext_transformed_colour(1150,470,item_stats.desc,20,200,0.5,0.5,0,c_gray,c_gray,c_gray,c_gray,1)
					if sold == true{
						
						draw_text_ext_transformed(1150,520,"Price: SOLD",20,50,0.7,0.7,0)

						
					}else
				{
						draw_text_ext_transformed(1150,520,"Price: D$"+string_thousands(item_stats.base_price+((item_stats.base_price* 0.1)*times_buied)),20,50,0.7,0.7,0)

				}
					
			}


			draw_set_halign(fa_right)
			draw_set_valign(fa_top)
			draw_set_font(-1)
			
			break;
}
