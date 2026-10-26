

if win_appear == true{
	
	timmer_win--
	mensage = "WIN!"


}

if timmer_win < 0{

	mensage = ""
	timmer_win= 180
	win_appear = false

}