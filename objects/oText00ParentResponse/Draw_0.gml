if (timer <= 0) {

	draw_set_alpha(a1);
	draw_set_color(c_black);
	var _x = room_width;
	var _y = room_height;
	
	draw_rectangle(text_x,text_y+text_box_height,text_x+text_width+buffer,_y,false);
	
	draw_set_color(c_white);
	draw_rectangle(text_x,text_y+text_box_height,text_x+text_width+buffer,_y,true);

	draw_set_alpha(a0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fText);
	draw_set_color(c_white);

	var _str = string_copy(text, 1, char_current);
	draw_text(text_x+buffer,text_y+text_box_height+10, _str);
	
	draw_set_alpha(1);

}





