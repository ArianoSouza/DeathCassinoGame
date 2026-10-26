
timer_button_up--

if is_button_up == false && timer_button_up<=0 {

	instance_create_layer(x,y+130,"instances",obj_button_gameover,{b_type:"exit"})
	is_button_up=true

}