draw_self()

var size_retangle = 18

if instance_exists(GENERAL){
	if global.current_game_state == GAMESTATES.gambling
		if (GENERAL.current_position == b_type){
	
			if global.current_game_state == GAMESTATES.gambling
			draw_set_alpha(1)
			draw_rectangle(x+size_retangle,y-size_retangle,x-size_retangle,y+size_retangle,1)

		}
}