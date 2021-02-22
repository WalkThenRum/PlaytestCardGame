if(!placed){
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
			draw_sprite(sprite_index,1,x,y);
		}else{
			draw_sprite(sprite_index,0,x,y);
		}
	}else{
		draw_sprite(sprite_index,0,x,y);
	}
}else{
	draw_sprite(sprite_index,2,x,y);
	var _string=string(hp);
	_string=string_insert("/",_string,0);
	_string=string_insert(string(attack),_string,0);
	draw_set_color(c_black);
	draw_text(x,y,_string);
	if(active){
		if(TextButton(x+1.5*PPT,y-1.5*PPT,x+3*PPT,y,"Attack")){
			attacking=true;
			active=false;
		}
		if(TextButton(x+1.5*PPT,y,x+3*PPT,y+1.5*PPT,"Move")){
			moving=true;
			active=false;
		}
	}else if(attacking){
		if(mouse_check_button_pressed(mb_right)){
			attacking=false;
			creator.active=true;
		}
		var _dist=dist(mouse_x,mouse_y,x,y);
		var _occupied=false;
		var _target=noone;
		with(pTangible){
			if(id!=other.id && dist(x,y,mouse_x,mouse_y)==0){
				_occupied=true;
				_target=id;
				break;
			}
		}
		if(_occupied && _dist<=range){
			draw_set_color(c_green);
			if(mouse_check_button_pressed(mb_left)){
				with(_target){
					hp-=other.attack;
				}
				attacking=false;
				creator.active=true;
				actions--;
			}
		}else{
			draw_set_color(c_red);
		}
		draw_rectangle(mod_floor(mouse_x),mod_floor(mouse_y),mod_floor(mouse_x)+PPT,mod_floor(mouse_y)+PPT,true);
	}else if(moving){
		if(mouse_check_button_pressed(mb_right)){
			moving=false;
			creator.active=true;
		}
		var _dist=dist(mouse_x,mouse_y,x,y);
		var _occupied=false;
		with(pTangible){
			if(id!=other.id && dist(x,y,other.x,other.y)==0){
				_occupied=true;
				break;
			}
		}
		if(_dist!=0 && _dist<=move && !_occupied){
			draw_set_color(c_green);
			if(mouse_check_button_pressed(mb_left)){
				x=mod_floor(mouse_x);
				y=mod_floor(mouse_y);
				moving=false;
				creator.active=true;
				actions--;
			}
		}else{
			draw_set_color(c_red);
		}
		draw_rectangle(mod_floor(mouse_x),mod_floor(mouse_y),mod_floor(mouse_x)+PPT,mod_floor(mouse_y)+PPT,true);
	}
}
if(creator.id==oPlayer1.id){
	draw_set_color(c_green);
}else{
	draw_set_color(c_blue);
}
draw_rectangle(x,y,x+PPT,y+PPT,true);