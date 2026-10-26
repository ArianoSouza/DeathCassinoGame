draw_self()

var position_left_x = 175 ,
	position_y = 520,
	position_middle_x = 640,
	position_right_x = 1105
	
	
	if credit_timmer < 300 {
		draw_set_halign(fa_center)
		draw_set_font(f_mine)
		draw_text_ext_transformed(position_left_x,position_y,"Dice sprite",0,200,2,2,0)
		draw_text_ext_transformed(position_left_x,position_y+30,"https://kicked-in-teeth.itch.io/dice-roll",20,200,1,1,0)
		
		draw_text_ext_transformed(position_middle_x,position_y,"Cute Cards",0,200,2,2,0)
		draw_text_ext_transformed(position_middle_x,position_y+30,"https://dani-maccari.itch.io/cute-cards",20,200,1,1,0)
		
		draw_text_ext_transformed(position_right_x,position_y,"fire asset",0,200,2,2,0)
		draw_text_ext_transformed(position_right_x,position_y+30,"https://devkidd.itch.io/pixel-fire-asset-pack",20,200,1,1,0)
	
	}else if credit_timmer >= 300 && credit_timmer < 600{
	
		draw_text_ext_transformed(position_left_x,position_y,"modern interiors",0,200,2,2,0)
		draw_text_ext_transformed(position_left_x,position_y+30,"https://limezu.itch.io/moderninteriors",20,200,1,1,0)
		
		draw_text_ext_transformed(position_middle_x,position_y,"font kiwi soda",0,200,2,2,0)
		draw_text_ext_transformed(position_middle_x,position_y+30,"https://www.dafont.com/kiwisoda.font",20,200,1,1,0)
		
		draw_text_ext_transformed(position_right_x,position_y,"font minecraft",0,200,2,2,0)
		draw_text_ext_transformed(position_right_x,position_y+30,"https://www.dafont.com/minecraft.font",20,200,1,1,0)
	
	
	}else if credit_timmer >= 600 && credit_timmer < 900{
	
		draw_text_ext_transformed(position_left_x,position_y,"Other arts",0,200,2,2,0)
		draw_text_ext_transformed(position_left_x,position_y+40,"Ira",20,200,1,1,0)
		
		draw_text_ext_transformed(position_middle_x,position_y,"Programing",0,200,2,2,0)
		draw_text_ext_transformed(position_middle_x,position_y+40,"Ira",20,200,1,1,0)
		
		draw_text_ext_transformed(position_right_x,position_y,"Writing",0,200,2,2,0)
		draw_text_ext_transformed(position_right_x,position_y+40,"Guess who? Ira",20,200,1,1,0)
	
	
	}
	
	else if credit_timmer >= 900 && credit_timmer < 1500{
	

		
		draw_text_ext_transformed(position_middle_x,position_y-10,"THANK YOU FOR PLAYING!!!",20,200,1.8,1.8,0)
		draw_text_ext_transformed(position_middle_x,position_y+60,"It means a lot",20,200,1,1,0)
		draw_text_ext_transformed(position_middle_x,position_y+90,"The game will close now. If you wish to ger another ending, just open the game again.",20,200,1,1,0)
		
		
	
	
	}