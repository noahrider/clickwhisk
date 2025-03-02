var w = string(round(global.whiskers)) + " WHISKERS";
var wps = string(global.wps) + " WHISKERS-PER-SECOND"
draw_set_color(c_white);
draw_sprite(spr_whiskersbg, 0, x-15, y-10);
draw_self();
draw_set_color(c_black);
draw_text(x, y + 250, w);
draw_text(x, y + 300, wps);
draw_set_color(c_white);