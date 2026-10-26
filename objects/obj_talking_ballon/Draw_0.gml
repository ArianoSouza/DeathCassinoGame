draw_self()

			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)
			
			if global.current_game_state == GAMESTATES.intro{
				if global.intro_speak_fase = INTRO_FASES.presentation{
					draw_sprite_ext(spr_talk_ballon,0,x,y,4.9,1.5,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x+10,y,frase_exposed,20,300,1,1,0,c_black,c_black,c_black,c_black,image_alpha)
					if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x+300,y+35,0.3,0.3,270,c_white,1)
				
						}
				
				}else if global.intro_speak_fase = INTRO_FASES.tutorial{
				
					draw_sprite_ext(spr_talk_ballon,0,x,y,2.66,1,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x+10,y,frase_exposed,20,150,0.8,0.8,0,c_black,c_black,c_black,c_black,image_alpha)
					
					if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x+150,y+35,0.3,0.3,270,c_white,1)
				
						}
				
				}
				
				
			}else if global.current_game_state == GAMESTATES.gambling{
			
			
			
			} else if global.current_game_state == GAMESTATES.gameover{
			
					draw_sprite_ext(spr_talk_ballon,0,x,y,2.66,1,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x+10,y,frase_exposed,20,150,0.8,0.8,0,c_black,c_black,c_black,c_black,image_alpha)
				if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x+150,y+35,0.3,0.3,270,c_white,1)
				
						}
			}
			
			else if global.current_game_state == GAMESTATES.game_ending_hell && obj_fade.image_alpha<=0{
			
					draw_sprite_ext(spr_talk_ballon,0,x,y,-4.9,1.5,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x-300,y,frase_exposed,20,300,1,1,0,c_black,c_black,c_black,c_black,image_alpha)
					
					if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x-25,y+35,0.3,0.3,270,c_white,1)
				
						}
			}
			
			else if global.current_game_state == GAMESTATES.game_ending_heaven && obj_fade.image_alpha<=0{
				if timmer_heaven<=0{
					draw_sprite_ext(spr_talk_ballon,0,x,y,4.9,1.5,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x+10,y,frase_exposed,20,300,1,1,0,c_black,c_black,c_black,c_black,image_alpha)
					
					if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x+300,y+35,0.3,0.3,270,c_white,1)
				
						}
				}
			}
			else if global.current_game_state == GAMESTATES.game_ending_earth && obj_fade.image_alpha<=0{
				if timmer_heaven<=0{
					draw_sprite_ext(spr_talk_ballon,0,x,y,-3.9,1.5,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x-230,y,frase_exposed,20,300,1,1,0,c_black,c_black,c_black,c_black,image_alpha)
					
					if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x-25,y+35,0.3,0.3,270,c_white,1)
				
						}
				}
			}
			
			else if global.current_game_state == GAMESTATES.game_ending{
			
					draw_sprite_ext(spr_talk_ballon,0,x,y,4.9,1.5,0,c_white,image_alpha)
					draw_text_ext_transformed_colour(x+10,y,frase_exposed,20,300,1,1,0,c_black,c_black,c_black,c_black,image_alpha)
			
				if baloon_state == "done"{
				
						draw_sprite_ext(spr_button_dice_reset_add,0,x+300,y+35,0.3,0.3,270,c_white,1)
				
						}
				}
			

			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(-1)
			
