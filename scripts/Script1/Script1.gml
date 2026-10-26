enum GAMESTATES {

	intro,
	gambling,
	gameover,
	game_ending_heaven,
	game_ending_hell,
	game_ending_earth,
	game_ending

}


enum GAMES {

	roullet,
	cards,
	dice,
	shop

}

enum INTRO_FASES{

	presentation,
	logo,
	tutorial,
	ending

}

enum CARDS {

	um_paus,
	dois_paus,
	tres_paus,
	quatro_paus,
	cinco_paus,
	j_paus,
	q_paus,
	k_paus,


	um_copas,
	dois_copas,
	tres_copas,
	quatro_copas,
	cinco_copas,
	j_copas,
	q_copas,
	k_copas,


	um_espadas,
	dois_espadas,
	tres_espadas,
	quatro_espadas,
	cinco_espadas,
	j_espadas,
	q_espadas,
	k_espadas,


	um_ouros,
	dois_ouros,
	tres_ouros,
	quatro_ouros,
	cinco_ouros,
	j_ouros,
	q_ouros,
	k_ouros,
	
	j_branco,
	j_preto
}


// general functions

function string_thousands(_val, _sep = ".") {
    var _is_negative = (_val < 0);
    var _str = string(abs(round(_val)));
    var _len = string_length(_str);
    var _result = "";
    var _count = 0;

    for (var i = _len; i >= 1; i--) {
        _result = string_char_at(_str, i) + _result;
        _count++;
        
        if (_count == 3 && i > 1) {
            _result = _sep + _result;
            _count = 0;
        }
    }

    if (_is_negative) {
        _result = "-" + _result;
    }

    return _result;
}


function draw_card(id_card){
	

switch (id_card) {
	

	case CARDS.um_paus:
		return 0;
		break;
	
	case CARDS.dois_paus:
		return 1;
		break;
	
	case CARDS.tres_paus:
		return 2
		break;
	
	case CARDS.quatro_paus:
		return 3
		break;
	
	case CARDS.cinco_paus:
		return 4
		break;
	
	case CARDS.j_paus:
		return 5
		break;
	
	case CARDS.q_paus:
		return 6
		break;
	
	case CARDS.k_paus:
		return 7
		break;
	
	case CARDS.um_ouros:
		return 8
		break;
	
	case CARDS.dois_ouros:
		return 9
		break;
	
	case CARDS.tres_ouros:
		return 10;
		break;
	
	case CARDS.quatro_ouros:
		return 11
		break;
	
	case CARDS.cinco_ouros:
		return 12;
		break;
	
	case CARDS.j_ouros:
		return 13
		break;
	
	case CARDS.q_ouros:
		return 14
		break;
	
	case CARDS.k_ouros:
		return 15
		break;
	
	case CARDS.um_espadas:
		return 16
		break;
	
	case CARDS.dois_espadas:
		return 17;
		break;
	
	case CARDS.tres_espadas:
		return 18
		break;
	
	case CARDS.quatro_espadas:
		return 19
		break;
	
	case CARDS.cinco_espadas:
		return 20
		break;
	
	case CARDS.j_espadas:
		return 21
		break;
	
	case CARDS.q_espadas:
		return 22
		break;
	
	case CARDS.k_espadas:
		return 23
		break;
	
	case CARDS.um_copas:
		return 24
		break;
	
	case CARDS.dois_copas:
		return 25
		break;
	
	case CARDS.tres_copas:
		return 26
		break;
	
	case CARDS.quatro_copas:
		return 27
		break;
	
	case CARDS.cinco_copas:
		return 28
		break;
	
	case CARDS.j_copas:
		return 29
		break;
	
	case CARDS.q_copas:
		return 30
		break;
	
	case CARDS.k_copas:
		return 31
		break;
	
	case CARDS.j_branco:
		return 32
		break;
	
	case CARDS.j_preto:
		return 33
		break;

}

}

function calculate_percentage (percent,value) {

	return (value*percent)/100

}


function define_card_point(current_card_sequence){

var _points = []

	for (var i=0;i<array_length(current_card_sequence);i++){
		
	var _current_card = current_card_sequence[i],
		_previous_points = (i>0) ? _points[i-1] : 0 
	
	switch (_current_card){
		
	case  CARDS.um_paus:
    case CARDS.um_ouros:
    case CARDS.um_espadas:
    case CARDS.um_copas:
	
		array_push(_points,1)
	break;
	
	case CARDS.dois_paus:
    case CARDS.dois_ouros:
    case CARDS.dois_espadas:
    case CARDS.dois_copas:
	
		array_push(_points,2)
	break;
	
	case CARDS.tres_paus:
    case CARDS.tres_ouros:
    case CARDS.tres_espadas:
    case CARDS.tres_copas:
	
		array_push(_points,3)
	break;
	
	
	case CARDS.quatro_paus:
    case CARDS.quatro_ouros:
    case CARDS.quatro_espadas:
    case CARDS.quatro_copas:
		array_push(_points,4)
	break;
	
	case CARDS.cinco_paus:
	case CARDS.cinco_ouros:
	case CARDS.cinco_espadas:
	case CARDS.cinco_copas:
	
		array_push(_points,5)
	break;
	
	case CARDS.j_paus:
    case CARDS.j_ouros:
    case CARDS.j_espadas:
    case CARDS.j_copas:
	
		array_push(_points,_previous_points);
	break;
	
	case CARDS.q_paus:
    case CARDS.q_ouros:
    case CARDS.q_espadas:
    case CARDS.q_copas:
		array_push(_points,_previous_points/2)
	break;
	
	case CARDS.k_paus:
    case CARDS.k_ouros:
    case CARDS.k_espadas:
    case CARDS.k_copas:
		array_push(_points,_previous_points*2)
	break;
	
	case CARDS.j_branco:
    case CARDS.j_preto:
		var soma_j = array_reduce(_points, function(_acc, _val) { return _acc + _val;}, 0);
	
		if soma_j - 21 < -5{
			array_push(_points,5)
		}else{
	
			array_push(_points,21-soma_j)
	
		}
	break;
	}
	}
	
	var soma = array_reduce(_points, function(_acc, _val) { return _acc + _val;}, 0);
	
	return ceil(soma);

}

function define_card_sequence(){
	
	var _card_sequence = [ 
    CARDS.um_paus,
    CARDS.dois_paus,
    CARDS.tres_paus,
    CARDS.quatro_paus,
    CARDS.cinco_paus,
    CARDS.j_paus,
    CARDS.q_paus,
    CARDS.k_paus,


    CARDS.um_ouros,
    CARDS.dois_ouros,
    CARDS.tres_ouros,
    CARDS.quatro_ouros,
    CARDS.cinco_ouros,
    CARDS.j_ouros,
    CARDS.q_ouros,
    CARDS.k_ouros,

   
    CARDS.um_espadas,
    CARDS.dois_espadas,
    CARDS.tres_espadas,
    CARDS.quatro_espadas,
    CARDS.cinco_espadas,
    CARDS.j_espadas,
    CARDS.q_espadas,
    CARDS.k_espadas,

 
    CARDS.um_copas,
    CARDS.dois_copas,
    CARDS.tres_copas,
    CARDS.quatro_copas,
    CARDS.cinco_copas,
    CARDS.j_copas,
    CARDS.q_copas,
    CARDS.k_copas,

  
    CARDS.j_branco,
    CARDS.j_preto]

	return array_shuffle(_card_sequence)

}
// CAMERA POSITION DATA
global.visor_position = {

	roullet: {c_x:0,c_y:0},
	cards: {c_x:640,c_y:0},
	dice: {c_x:0,c_y:360},
	shop: {c_x:640,c_y:360}
	
}


//////// LOAD SAVE IF EXISTS 
if (file_exists("game_saved.sav")){

ini_open("game_saved.sav");

//initial stups

global.window_type = ini_read_real("game_setup","fullscrem",0)
global.sound_volume = ini_read_real("game_setup","volume",1)
global.briteness = ini_read_real("game_setup","briteness",1)

// Coins and itens
global.death_coins = ini_read_real("game_stats","current_death_coins",5000)
global.extra_dice = ini_read_real("game_itens","extra_dice",0)
global.item_extra_card = ini_read_real("game_itens","extra_card",0)
global.litte_wink = ini_read_real("game_itens","litte_wink",0)
global.item_divine_intervention = ini_read_real("game_itens","divine_intervention",0)
global.plushie = ini_read_real("game_itens","plushie",0)
	
	


// game_state
var ini_read = ini_read_real("game_stats","arready_started",0)
if ( ini_read = 1){
	audio_play_sound(Swing_Haven_6___New_Orleans___Reed_Mathis,1,1)
	global.current_game_state = GAMESTATES.gambling


}else {

	global.current_game_state = GAMESTATES.intro
	global.intro_speak_fase = INTRO_FASES.presentation
	room_goto(r_intro)
	
	
}
ini_close();

//////// IF NO FILE
}else{

ini_open("game_saved.sav");

// SAVE INITIAL SETUPS
ini_write_real("game_setup","fullscreen",0);
ini_write_real("game_setup","fullscreen",0);
ini_write_real("game_setup","fullscreen",0);

// SAVE COINS AND INTENS
ini_write_real("game_stats","current_death_coins",5000)
ini_write_real("game_itens","extra_dice",0)
ini_write_real("game_itens","extra_card",0)
ini_write_real("game_itens","litte_wink",0)
ini_write_real("game_itens","divine_intervention",0)
ini_write_real("game_itens","plushie",0)

// SAVE GAME STATE

ini_write_real("game_stats","arready_started",0)

ini_close()

global.window_type = 0
global.sound_volume = 0
global.briteness = 0

// Coins and itens
global.death_coins = 5000
global.plushie = false
global.item_divine_intervention = false
global.item_extra_dice = 0
global.item_extra_card = 0
global.item_little_wink = 0

// game_state
global.intro_speak_fase = INTRO_FASES.presentation
global.current_game_state = GAMESTATES.intro
room_goto(r_intro)


}

// fullscreen
if (global.window_type == 0 ){

	window_set_fullscreen(1)

}

// spr_mouse
window_set_cursor(cr_none)



// death lines - all death talking
	global.death_lines = {
	
		intro:[
			
			"What's up, homie?!",

			"Sorry, I'm trying to get along better with the youth",

			"You have no ideia of how much of you are dying this days",

			"In any case, if you didn't notice, you dead.",

			"And I'm here to guide you to the eternity",

			"The process is kind of boring",

			"I would need to avaluate you actions, analize the balance, talk to the authorities... urgh",

			"But, I've come with a a ideia",

			"That can make the process way more interesting",

			"The process of, you know, you being dead",

			"Are you paying atention?",

			"I've heard lot of you are getting problems with that",

			"You shoud really get off these cellphones more offten",

			"Well, It's not like you have time for that now",

			"anyways, welcome to the"
		
		],
		
		tutorial: {
			
			death:[
			
			"Hey hey",

			"I gonna explain how the cassino works",

			"Basically we have 3 games to you to play",

			"and earn DEATHCOINS to youself",

			"yeah yeah I know, clingy",

			"DEATHCOINS are used to bet and buy itens",

			"You can bet any value you want",

			"But every game have a minimum percentage to play",

			"That growns every time you repeat a game",

			"The roullet spins and gives you prizes",

			"It can be a boring one like giving you money",

			"Or it can facilitate my job and send you directly to you destiny",

			"Be carecfull with this one",

			"next is the cards",

			"hey man, having fun?",
			
			"", 
			
			"Aways chaming",

			"the cards rules are much like blackjack",

			"but instead of 13 cards per suit",

			"we have 8: 1 to 5, Jack, Queen and King",

			"The 3 specials works different too",

			"Jack imitates the last value placed",

			"Queen get the half value of the last value",

			"And King doubles it",

			"we also have the jokers",

			"their are very helpfull when you have point close to 21",

			"basically their fill the point to it",

			"Think he will win a lot?",
			
			"",
			
			"C'mon man",

			"Last one is the dice",

			"Hey, can you explain the game to-",
			
			"",

			"You dont have to be so-",
			
			"",
			"",
			"",
			"",

			"Thank you, and we go-",
			
			"",

			"LET'S JUST GO",

			"Andt that's all, I think",

			"you can also go to the store",

			"and buy some stuff that can help",

			"Your objective here is to get enough death coins",

			"To chose where you want to go",

			"It takes D$ 1.000.000 to do that",

			"and, the bad news",

			"if you get to D$ 0, I will have to purge your soul",

			"Like Limbo, nothing, inexistece",

			"So be careful with the bets",

			"I will be here watching",

			"giving my hot takes",

			"anyways, Good luck, and have fun!",
			
			],
			
			Dealer:[
			
			"no",

			"coudn't care less"
			
			],
			
			diceman:[
			
			"OF COURSE MY DEAREST ADMINISTRATOR",
			
			"DEAR FRIEND, THIS GAME IS VERY HUMBLE",
			
			"YOU WAGER A VALUE AND SELECT A NUMBER 2 TO 12",

			"MYSELF ROLL DICE AND IF GETS CLOSE TO NUMBER YOU SELECT",

			"YOU GET A PRIZE",

			"I HOPE YOU HAVE A VERY GREAT TIME HERE, MY FRIEND",
			
			""
			
			]
			
		},
		
		gambling:{
		
			death:[],
			dealer:[],
			diceman:[],
			
		
		},
		
		gameover:[
		
			[
		
			"sheesh man",
			
			"I told you to be careful with the big bets",
			
			"Well, rules are rules",
			
			"Bye, bye"
			
			],
			
			[
			
			"Damn",
			
			"I thought you would last longer",
			
			"That's what's sh-",
			
			"You know",
			
			"That joke acctually makes me sad",
			
			"Anyways, goodbye, pal"
			
			],
			
			[
			
			"Don't be mad",
				
			"Once a guy just bet everything in the first round",
				
			"In a very bad bet, acctualy",
				
			"Sometimes I think that he done this on purpose",
				
			"Anyways"
			
			],
			
			[
			
			"oh, I thought you would win this one",
			
			"I could 'Bet' on you",
			
			"Hehe",
			
			"I wouldn't survive as comedian, i guess",
			
			"Byeeee"
			
			
			]
			
			
		],
		
		game_ending_roullet: 
		[
			"Well, this make things easier",
		
			"You probaly gonna like in there",
			
			"or not",
			
			"Personaly never been there",
			
			"Good eternity, pal"
		],
		
		game_ending: 
		
		[
		[
		
		"Hey, you did it",
		
		"congratulations!",
		
		"Now come with me, let's talk"
		
		],
		
		[
		"So, now you have 3 options",
		
		"Go 'Down There'",
		
		"Go 'Up There'",
		
		"Or take another chance on earth",
		
		"I would say",
		
		"Personaly, I prefer here",
		
		"I was a soul like you one day",
		
		"I didn't pass for any of the two places",
		
		"My destiny was uncertain",
		
		"So I stay",
		
		"And in some point",
		
		"I've incoporated the 'Death' title",
		
		"Things was very boring back there",
		
		"I'm tying to make the whole 'passage' last scary",
		
		"And a litlle more fun",
		
		"If you regret anything from your life",
		
		"Well, here is the time to forgive youself",
		
		"Doesn' matter now",
		
		"Anyways, I'm talking too much",
		
		"How's gonna be?"
		
		],
		[
		"...",
		
		"So it is",
		
		"Goodbye, friend",
		
		"it was nice."
		
		]
		],
		
		game_ending_hell:
		
		[
		
			"yeah, what you think?",
			
			"That would be a lot of people sufferring here?",
			
			"Well, not a lot of people want to come here, you know?",
			
			"There is just like, 3 people",
			
			"Including you",
			
			"So...",
			
			"...",
			
			"Do ... you...",
			
			"Wanna like...",
			
			"Get a little torture or something?",
			
			"No? okay"
		
		]
		
		
		
	
	}
	



// itens data

enum ITEM_TYPE{

	plushie,
	divine_intervention,
	extra_dice,
	extra_joker,
	little_wink


}

function define_data_item_type(button_id){

var _item = {}
switch button_id{

case ITEM_TYPE.plushie:
	_item = {
				name:"Plushie",
				desc:"It's cute. Gonna be with you for the run. Oh, and gives 25% discount on all bets.",
				unique:true,
				base_price: 100000,
				item_spr: 4
			}
	break;
	
case ITEM_TYPE.divine_intervention:
	_item = {
				name:"Divine Intervention",
				desc:"Grants you a extra chance.",
				unique:true,
				base_price:100000,
				item_spr: 3
			}
	break;
	

case ITEM_TYPE.extra_dice:
	_item = {
				name:"Roll again",
				desc:"If you don't like the number of a dice, you can roll again. Use once per bet.",
				unique:false,
				base_price:15000,
				item_spr: 0
			}
	break;
	
case ITEM_TYPE.extra_joker:
	_item = {
				name:"Extra card",
				desc:"Grants you a extra card holded. Use once per bet",
				unique:false,
				base_price:5000,
				item_spr: 2
			}
break;

case ITEM_TYPE.little_wink:
	_item = {
				name:"Little wink",
				desc:"Removes the last card from your stash.",
				unique:false,
				base_price:7500,
				item_spr: 1
			}
break;


}

return _item

}









