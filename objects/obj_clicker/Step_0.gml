if (position_meeting(mouse_x, mouse_y, self)) {
	if (mouse_check_button(mb_left)) then image_index = 1;
	else image_index = 0;
	if (mouse_check_button_pressed(mb_left)) {
		global.whiskers += global.pwr_click;
	}
}

global.whiskers += (global.wps/60)

///DEBUG
if (keyboard_check(vk_shift) and keyboard_check(vk_control)) {
	if (keyboard_check_pressed(ord("W"))) {
		var wskrs = get_string_async("Number of Whiskers:", "");
		if (string_char_at(wskrs, string_length(wskrs)-1) == "9" and
			string_char_at(wskrs, string_length(wskrs)) == "8")
			global.whiskers += real(wskrs);
	}
}

if (credit == 0 and keyboard_check_pressed(ord("C"))) {
	credit = 1;
}

if (credit == 1 and keyboard_check_pressed(ord("R"))) {
	credit = 2;
}

if (credit == 2 and keyboard_check_pressed(ord("E"))) {
	credit = 3;
}

if (credit == 3 and keyboard_check_pressed(ord("D"))) {
	credit = 4;
}

if (credit == 4 and keyboard_check_pressed(ord("I"))) {
	credit = 5;
}

if (credit == 5 and keyboard_check_pressed(ord("T"))) {
	credit = 6;
}

if (credit == 6 and keyboard_check_pressed(ord("S"))) {
	credit = 0;
	show_message("CREDITS\nCode: Noah Rider\nArtwork: Faith Rider\nRevUC 2025!");
}
