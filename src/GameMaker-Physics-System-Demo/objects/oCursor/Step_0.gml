/// @description [CURSOR]
show_debug_overlay(true);
window_set_cursor(cr_none);
x = mouse_x;
y = mouse_y;
time -= 1

if  (mouse_check_button(mb_left)) and ( (!place_meeting(x , y, oWall)) and (!place_meeting(x , y, oObjectSquare)) ) {
	if mode == "square"{
		instance_create_layer(x, y, "obj", oObjectSquare);
	}
}
