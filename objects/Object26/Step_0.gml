x=mouse_x
y=mouse_y

if global.current_game_state == GAMESTATES.gambling || global.current_game_state == GAMESTATES.gameover || global.current_game_state ==GAMESTATES.game_ending{

	image_alpha = 1

}else{

	image_alpha = 0

}


if place_meeting(x,y,obj_button_add_vallue){

	image_index = 1

}else if place_meeting(x,y,obj_button_change_bet_value){

	image_index = 1

}else if place_meeting(x,y,obj_button_change_game){

	image_index = 1

}else if place_meeting(x,y,obj_button_gameover){

	image_index = 1

}
else if place_meeting(x,y,obj_button_game_ending){

	image_index = 1

}
else if place_meeting(x,y,obj_extra_card_use){

	image_index = 1

}else if place_meeting(x,y,obj_little_wink_use){

	image_index = 1

}else if place_meeting(x,y,obj_dice_game_start_button){

	image_index = 1

}else if place_meeting(x,y,obj_personal_card){

	image_index = 1

}else if place_meeting(x,y,obj_roll_again_use){

	image_index = 1

}else if place_meeting(x,y,obj_roullet_game_button){

	image_index = 1

}else if place_meeting(x,y,obj_shop_item){

	image_index = 1

}else{

	image_index = 0
}
