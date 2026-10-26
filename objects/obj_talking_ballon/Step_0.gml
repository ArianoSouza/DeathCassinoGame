if global.current_game_state == GAMESTATES.intro{
	if global.intro_speak_fase = INTRO_FASES.tutorial{

		if frase_index == 15 || frase_index == 28 || frase_index == 32 || frase_index == 34 || frase_index == 35 || frase_index == 36 || frase_index == 37 || frase_index == 39{
	
			image_alpha = 0
	
		}else
		{
			image_alpha = 1
		}
		
		if GENERAL.current_position == GAMES.roullet{
		
			x =  104
			y = 46
			
		}else if GENERAL.current_position == GAMES.cards{
		
			x =  750
			y = 39
		
		}
		else if GENERAL.current_position == GAMES.dice{
		
			x =  128
			y = 403
		
		}
	}
}else if global.current_game_state == GAMESTATES.gameover{
		
		sprite_index = spr_talk_ballon
		image_alpha = 1
		
		
	if GENERAL.current_position == GAMES.roullet{
		
			x =  104
			y = 46
			
		}else if GENERAL.current_position == GAMES.cards{
		
			x =  750
			y = 39
		
		}
		else if GENERAL.current_position == GAMES.dice{
		
			x =  128
			y = 403
		
		}
		

	

}else if global.current_game_state == GAMESTATES.game_ending_hell{
		
		
		if obj_fade.image_alpha<=0{
		image_alpha = 1
		}else{
		image_alpha = 0
		}


		
	
}

else if global.current_game_state == GAMESTATES.game_ending_heaven{
		
		
		
		if obj_fade.image_alpha<=0{
			
		timmer_heaven--
		image_alpha = 1
		
		
		}else{
		image_alpha = 0
		}


		
	
}

else if global.current_game_state == GAMESTATES.game_ending_earth{
		
		
		
		if obj_fade.image_alpha<=0{
			
		timmer_heaven--
		image_alpha = 1
		
		
		}else{
		image_alpha = 0
		}


		
	
}else if global.current_game_state == GAMESTATES.game_ending && room = r_main{
		
		sprite_index = spr_talk_ballon
		image_alpha = 1
		
		
	if GENERAL.current_position == GAMES.roullet{
		
			x =  104
			y = 46
			
		}else if GENERAL.current_position == GAMES.cards{
		
			x =  750
			y = 39
		
		}
		else if GENERAL.current_position == GAMES.dice{
		
			x =  128
			y = 403
		
		}
		

	

}



if global.current_game_state == GAMESTATES.intro && global.intro_speak_fase = INTRO_FASES.logo{

	instance_destroy(self)

}

	if baloon_state= "written"{
		

		
		if letter_index <= string_length(now_frase){
		
		timmer_text--
			
			if timmer_text < 0{
				if global.current_game_state == GAMESTATES.intro{
					if letter_index%2 = 0 && letter_index < (string_length(now_frase)/5)*4{
						audio_play_sound(s_whomp,99,0)
					}

					if letter_index%3 = 0 && letter_index < (string_length(now_frase)/5)*4{
					audio_play_sound(s_whomp_3,99,0)
				
					}
				}else if global.current_game_state == GAMESTATES.game_ending_hell{
				
					if letter_index%2 = 0 && letter_index < (string_length(now_frase)/5)*4{
							audio_play_sound(d2,99,0)
						}

						if letter_index%3 = 0 && letter_index < (string_length(now_frase)/5)*4{
						audio_play_sound(d1,99,0)
				
						}
				
				}else if global.current_game_state == GAMESTATES.game_ending_earth || global.current_game_state == GAMESTATES.game_ending_heaven {
				
					if letter_index%2 = 0 && letter_index < (string_length(now_frase)/5)*4{
							audio_play_sound(h_2,99,0)
						}

						if letter_index%3 = 0 && letter_index < (string_length(now_frase)/5)*4{
						audio_play_sound(h_1,3,99,0)
				
						}
				
				}
				else if global.current_game_state == GAMESTATES.game_ending || global.current_game_state == GAMESTATES.gameover {
				
					if letter_index%2 = 0 && letter_index < (string_length(now_frase)/5)*4{
							audio_play_sound(s_whomp,99,0)
						}

						if letter_index%3 = 0 && letter_index < (string_length(now_frase)/5)*4{
						audio_play_sound(s_whomp_3,3,99,0)
				
						}
				
				}
				frase_exposed = string_copy(now_frase,0,letter_index)
				letter_index++
				timmer_text = 2
		
			}
			
		}else{
		
			baloon_state = "done"
		
		}
	
	
	
	}