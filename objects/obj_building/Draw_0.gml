draw_self();
draw_set_color(c_black);
draw_text(x+5, y+5, type);
draw_text(x+200, y+5, string(round(price)) + " WSK");
draw_set_halign(fa_right);
draw_text(x+375,y+25,bought);
draw_set_halign(fa_left);
draw_set_color(c_white);