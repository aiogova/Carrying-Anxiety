//update text position
text_x = camera_get_view_x(cam);
text_y = camera_get_view_y(cam);

if (fade_out_timer > 0) {
	fade_out_timer--;

	if (timer > 0) {
		timer--;
	} else {
		if (a0 < 1) a0 += 0.05; else a0 = 1;
		if (a1 < a1_max) a1 += 0.1; else a1 = a1_max;
	
		if (!text_all_set) {
			draw_set_font(fText);
			text = string_wrap(text_to_set, text_width);
			if (text != "") {
				audio_play_sound(sndText,1,false);
			}
			text_all_set = true;
		}
	
		var _len = string_length(text);
		if (char_current < _len) {
			char_current += char_speed;
			if (char_current >= char_next) {
				char_current = char_next;
				if (string_char_at(text,char_current) != " ") {
					audio_play_sound(sndText,1,false);
				}
				char_next = char_current+1;
			}
		} else {
			if (!text_finished) text_finished = true;
		}
	}

} else {
	a1 -= 0.01;
	a0 -= 0.01;
	if (a1 <= 0) {
		global.text_currently_on_screen = false;
		global.hasBone = true;
		instance_destroy();
	}
}







