card[0]=oMelee1;
cardName[0]="Melee 1";
cardCopies[0]=4;
cardMana[0]=1;

card[1]=oMelee2;
cardName[1]="Melee 2";
cardCopies[1]=3;
cardMana[1]=2;

card[2]=oMelee3;
cardName[2]="Melee 3";
cardCopies[2]=2;
cardMana[2]=3;

card[3]=oRange1;
cardName[3]="Range 1";
cardCopies[3]=3;
cardMana[3]=1;

card[4]=oRange2;
cardName[4]="Range 2";
cardCopies[4]=2;
cardMana[4]=2;

card[5]=oRange3;
cardName[5]="Range 3";
cardCopies[5]=1;
cardMana[5]=3;

var n=0;
var _tempArray;

for(var i=0;i<array_length(card);i++){
	for(var j=0;j<cardCopies[i];j++){
		_tempArray[n]=i;
		n++;
	}
}

deckSize=n;

for(var i=0;i<array_length(_tempArray);i++){
	n--
	var m=irandom_range(0,n);
	deck[i]=_tempArray[m];
	for(var j=m;j<n;j++){
		_tempArray[j]=_tempArray[j+1];
	}
}
