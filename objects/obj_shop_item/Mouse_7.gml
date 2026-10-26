var _value_now = item_stats.base_price+((item_stats.base_price* 0.1)*times_buied)
image_blend =c_white
switch i_type{


case ITEM_TYPE.plushie:

if global.plushie != true{
		if global.death_coins -  _value_now <= 0{
	
		}else{
			global.plushie = true
			sold = true
			global.death_coins-=_value_now
		}
}
		
	break;
	
case ITEM_TYPE.divine_intervention:
	
	if global.item_divine_intervention != true{
		if global.death_coins -  _value_now <= 0{
		
		}else{
			global.item_divine_intervention = true
			sold = true
			global.death_coins-=_value_now
		}
}
	
	break;
	

case ITEM_TYPE.extra_dice:
	

		if global.death_coins -  _value_now <= 0{
			
		}else{
			global.extra_dice++
			global.death_coins-=_value_now
			times_buied++
		}


	break;
	
case ITEM_TYPE.extra_joker:

		if global.death_coins -  _value_now <= 0{
	
		}else{
			global.item_extra_card++
			global.death_coins-=_value_now
			times_buied++
		}

	
break;

case ITEM_TYPE.little_wink:

		if global.death_coins -  _value_now <= 0{
	
		}else{
			global.litte_wink++
			global.death_coins-=_value_now
			times_buied++
		}
	
break;


}