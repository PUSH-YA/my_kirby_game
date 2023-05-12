menu_x += (menu_x_target - menu_x) / menu_speed;

if(menu_control){
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
		menu_cursor--;
		if(menu_cursor < 0 ) menu_cursor = menu_items - 1;
	}
	
	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_shift) || keyboard_check_pressed(mb_any)){
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false
	}
	
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch(menu_committed){
		case 2: slide_transition(TRANS_MODE.GOTO, characters); break
		case 1: default : slide_transition(TRANS_MODE.GOTO, level1); break;
		case 0: game_end(); break;
	}
	
}