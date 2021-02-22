if(active){
	if(deckShuffled){
		for(var i=0;i<handSize;i++){
			if(cardMana[i]>mana){
				TextButton2((.25+.1*i)*SCREENWIDTH,0,(.35+.1*i)*SCREENWIDTH-1,.1*SCREENHEIGHT-1,cardName[i]);
			}else if(TextButton((.25+.1*i)*SCREENWIDTH,0,(.35+.1*i)*SCREENWIDTH-1,.1*SCREENHEIGHT-1,cardName[i])){
				if(!placingUnit){
					mana-=cardMana[i];
					with(instance_create_depth(mouse_x,mouse_y,-mouse_y,card[i])){
						creator=other.id;
					}
					//reorder deck
					var _card=card[i];
					var _cardMana=cardMana[i];
					var _cardName=cardName[i];
					
					for(var j=i;j<deckSize-1;j++){
						card[j]=card[j+1];
						cardMana[j]=cardMana[j+1];
						cardName[j]=cardName[j+1];
					}
					card[deckSize-1]=_card;
					cardMana[deckSize-1]=_cardMana;
					cardName[deckSize-1]=_cardName;
					active=false;
					handSize--;
				}
			}
		}
	}
}