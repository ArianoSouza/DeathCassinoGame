credit_timmer++


if credit_timmer >=1500{
	
		if (file_exists("game_saved.sav")){
				
				ini_open("game_saved.sav");


				// SAVE COINS AND INTENS
				ini_write_real("game_stats","current_death_coins",5000)
				ini_write_real("game_itens","extra_dice",0)
				ini_write_real("game_itens","extra_card",0)
				ini_write_real("game_itens","litte_wink",0)
				ini_write_real("game_itens","divine_intervention",0)
				ini_write_real("game_itens","plushie",0)

				// SAVE GAME STATE

				ini_write_real("game_stats","arready_started",1)

				ini_close()
			}
		game_end()
	
	}