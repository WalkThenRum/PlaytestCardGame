function dist(_x1,_y1,_x2,_y2){
	return max(abs(mod_floor(_x1)-mod_floor(_x2)),abs(mod_floor(_y1)-mod_floor(_y2)))/PPT;
}