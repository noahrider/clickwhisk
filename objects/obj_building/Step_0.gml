switch(type) {
	case "Cat Food":
		price = (25 * (1 + 3)*bought/3)+15;
		break;
	case "Bell":
		price = (50 * (1 + 5)*bought/3)+69;
		break;
	case "Tree":
		price = (100 * (1 + 12)*bought/3)+1250;
		break;
	case "Squeaky Toy":
		price = (750 * (1 + 12)*bought/3)+75000;
		break;
	case "Cat Nip":
		price = (1250 * (1 + 12)*bought/3)+500000;
		break;
}

if (global.whiskers >= price) then image_index = 1;
else image_index = 0;


if (position_meeting(mouse_x, mouse_y, self)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (global.whiskers >= price) {
			bought += 1;
			global.whiskers -= price;
			switch(type) {
				case "Cat Food":
					global.wps += (3*bought);
					break;
				case "Bell":
					global.wps += (7*bought);
					break;
				case "Tree":
					global.wps += (15*bought);
					break;
				case "Squeaky Toy":
					global.wps += (45*bought);
					break;
				case "Cat Nip":
					global.wps += (150*bought);
					break;
			}
		}
	}
}
