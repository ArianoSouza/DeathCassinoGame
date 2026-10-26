
 switch global.current_game_state{
 
	case GAMESTATES.intro:
	
		switch global.intro_speak_fase{
		
		case INTRO_FASES.presentation:
		case INTRO_FASES.tutorial:
		
		if instance_exists(obj_talking_ballon_dealer){
		
			obj_talking_ballon_dealer.letter_index=0
			obj_talking_ballon_dealer.baloon_state="written"
		
		}
		
		if instance_exists(obj_talking_ballon_dice_man){
		
		obj_talking_ballon_dice_man.letter_index=0
		obj_talking_ballon_dice_man.baloon_state="written"
		
		}
			if frase_index < array_length(text_now)-1 {
				
				
				
				if baloon_state == "done"{
					
		
					frase_index++
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					now_frase = text_now[frase_index]
				}
			
			}else{
				
				if baloon_state == "done"{
					
	
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					frase_index = 0
					
					if global.intro_speak_fase == INTRO_FASES.presentation{
						
						audio_play_sound(audio_intro,1,1)
						global.current_game_state = GAMESTATES.intro
						global.intro_speak_fase = INTRO_FASES.logo
						
					}else if global.intro_speak_fase == INTRO_FASES.tutorial{
						

						global.current_game_state = GAMESTATES.gambling
					
					}
				}
			}
		
		break;
	
		
		}
	
	break;
	
	case GAMESTATES.gameover:
		
		if frase_index < array_length(text_now)-1 {
				
				
				if baloon_state == "done"{
					
		
					frase_index++
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					now_frase = text_now[frase_index]
				}
			
			}else{
				
				if baloon_state == "done"{
					

					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					frase_index = 0
					room_goto(r_game_over)
				}
			}
	
	break;
	
	case GAMESTATES.game_ending_hell:
		
		if frase_index < array_length(text_now)-1 {
				
				
				if baloon_state == "done"{
					

					frase_index++
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					now_frase = text_now[frase_index]
				}
			
			}else{
				
				if baloon_state == "done"{
					
	
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					frase_index = 0
					room_goto(r_credits)
				}
			}
			break;
			
			case GAMESTATES.game_ending_heaven:
			
			if timmer_heaven<=0{
		
					if frase_index < array_length(text_now)-1 {
				
				
				if baloon_state == "done"{
					
	
					frase_index++
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					now_frase = text_now[frase_index]
				}
			
			}else{
				
				if baloon_state == "done"{
					
	
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					frase_index = 0
					room_goto(r_credits)
				}
				}
			}
		
	break;
		case GAMESTATES.game_ending_earth:
			
			if timmer_heaven<=0{
		
					if frase_index < array_length(text_now)-1 {
				
				
				if baloon_state == "done"{
					
	
					frase_index++
					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					now_frase = text_now[frase_index]
				}
			
			}else{
				
				if baloon_state == "done"{
					

					frase_exposed = ""
					letter_index = 0
					baloon_state = "written"
					frase_index = 0
					room_goto(r_credits)
				}
				}
			}
		
	break;
	
	case GAMESTATES.game_ending:
	
		if room == r_main{
		
			if frase_index < array_length(text_now)-1 {
				
				
					if baloon_state == "done"{
					

						frase_index++
						frase_exposed = ""
						letter_index = 0
						baloon_state = "written"
						now_frase = text_now[frase_index]
					}
			
				}else{
				
					if baloon_state == "done"{
						

						frase_exposed = ""
						letter_index = 0
						baloon_state = "written"
						frase_index = 0
						room_goto(r_game_ending)
					}
				}
				
				}
		else if room == r_game_ending && text_now = global.death_lines.game_ending[1]{
		
		if frase_index < array_length(text_now)-1 {
				
				
					if baloon_state == "done"{
						

						frase_index++
						frase_exposed = ""
						letter_index = 0
						baloon_state = "written"
						now_frase = text_now[frase_index]
					}
					
					
					
			

			}
	
		}
		else if room == r_game_ending && text_now = global.death_lines.game_ending[2]{
		
		if frase_index < array_length(text_now)-1 {
				
				
					if baloon_state == "done"{
						

						frase_index++
						frase_exposed = ""
						letter_index = 0
						baloon_state = "written"
						now_frase = text_now[frase_index]
					}
					
			
					}else{ 
						
							if baloon_state == "done" && local_choose = "up"{
								
	
								frase_exposed = ""
								letter_index = 0
								baloon_state = "written"
								frase_index = 0
								global.current_game_state = GAMESTATES.game_ending_heaven
								audio_play_sound(h,100,0)
								room_goto(r_up)
								
							} else if baloon_state == "done" && local_choose = "down"{
								
			
								frase_exposed = ""
								letter_index = 0
								baloon_state = "written"
								frase_index = 0
								global.current_game_state = GAMESTATES.game_ending_hell
								audio_play_sound(earth,100,0)
								room_goto(r_down)
							
							
							}
							
							else if baloon_state == "done" && local_choose = "earth"{
								
						
								frase_exposed = ""
								letter_index = 0
								baloon_state = "written"
								frase_index = 0
								audio_play_sound(earth,100,0)
								global.current_game_state = GAMESTATES.game_ending_earth
								room_goto(r_earth)
							
							}
			}
		}
		
	break;
 
 }