cam = view_get_camera(0);

fade_out_timer = 300;

a0 = 0;
a1 = 0;
a1_max = 0.9;

text_box_height = 500;


buffer = 20;

//position of text and text box
text_x = 20;
text_y = room_height-text_box_height;
text_width = 700;

text = "";

timer = 0;

text_all_set = false;

char_current = 1;
char_speed = 0.5;
char_next = char_current+1;

text_finished = false;

global.text_currently_on_screen = true;




