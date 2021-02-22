function TextButton(_x1,_y1,_x2,_y2,_string){
	draw_set_color(c_white);
	draw_rectangle(_x1,_y1,_x2,_y2,false);
	draw_set_color(c_black);
	draw_text(min(_x1,_x2),min(_y1,_y2),_string);
	if(((_x1<=mouse_x && mouse_x<=_x2) || (_x2<=mouse_x && mouse_x<=_x1)) && ((_y1<=mouse_y && mouse_y<=_y2) || (_y2<=mouse_y && mouse_y<=_y1))){
		draw_set_color(c_red);
		draw_rectangle(_x1,_y1,_x2,_y2,true);
		draw_set_color(c_black);
		if(mouse_check_button_pressed(mb_left)){
			return true;
		}else{
			return false;
		}
	}
}

function TextButton2(_x1,_y1,_x2,_y2,_string){
	draw_set_color(c_white);
	draw_set_alpha(.5);
	draw_rectangle(_x1,_y1,_x2,_y2,false);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_text(min(_x1,_x2),min(_y1,_y2),_string);
	if(((_x1<=mouse_x && mouse_x<=_x2) || (_x2<=mouse_x && mouse_x<=_x1)) && ((_y1<=mouse_y && mouse_y<=_y2) || (_y2<=mouse_y && mouse_y<=_y1))){
		draw_set_color(c_red);
		draw_rectangle(_x1,_y1,_x2,_y2,true);
		draw_set_color(c_black);
		if(mouse_check_button_pressed(mb_left)){
			return true;
		}else{
			return false;
		}
	}
}