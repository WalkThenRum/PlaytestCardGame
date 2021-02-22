if(hp<=0){
	instance_destroy();
}
if(!placed){
	if(mouse_check_button_pressed(mb_right)){
		creator.active=true;
		creator.mana+=mana;
		//reorder deck
		var _deckSize=creator.deckSize;
		var _card=creator.card[_deckSize-1];
		var _cardMana=creator.cardMana[_deckSize-1];
		var _cardName=creator.cardName[_deckSize-1];
		
		for(var j=_deckSize-2;j>0;j--){
			creator.card[j]=creator.card[j-1];
			creator.cardMana[j]=creator.cardMana[j-1];
			creator.cardName[j]=creator.cardName[j-1];
		}
		creator.card[0]=_card;
		creator.cardMana[0]=_cardMana;
		creator.cardName[0]=_cardName;
		creator.handSize++;
		instance_destroy();
	}	
	x=mod_floor(mouse_x);
	y=mod_floor(mouse_y);
	if(mouse_check_button_pressed(mb_left)){
		if(dist(creator.x,creator.y,x,y)<=2){
			var _occupied=false;
			var _x=x;
			var _y=y;
			var _id=id;
			with(pTangible){
				if(id!=_id && dist(x,y,_x,_y)==0){
					_occupied=true;
					break;
				}
			}
			if(!_occupied){
				placed=true;
				creator.active=true;
			}
		}
	}
}else if(!active && !attacking && !moving){
	if(dist(mouse_x,mouse_y,x,y)==0 && mouse_check_button_pressed(mb_left) && creator.active && actions!=0){
		active=true;
	}
}else if(active){
	if(mouse_check_button_pressed(mb_right)){
		active=false;
	}
}