if global.current_game_state == GAMESTATES.intro{
if global.intro_speak_fase = INTRO_FASES.tutorial{

			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			draw_set_font(f_mine)
			
			
			draw_sprite_ext(spr_talk_ballon,0,x,y,-2.55,1.3,0,c_white,image_alpha)
			draw_text_ext_transformed_colour(x-150,y,frase_exposed,20,150,0.8,0.8,0,c_black,c_black,c_black,c_black,image_alpha)

			draw_set_alpha(1)
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(-1)
}}