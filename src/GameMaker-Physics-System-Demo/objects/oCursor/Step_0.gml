/// @description [CURSOR]
window_set_cursor(cr_none); //removes standard windows cursor from game

//follow mouse position
x = mouse_x;
y = mouse_y;
time -= 1

// checks if the left mouse button is pressed, and makes sure the cursor is not touching a wall or object
if  (mouse_check_button(mb_left)) and ( (!place_meeting(x , y, oWall)) and (!place_meeting(x , y, oObjectSquare)) ) {
	if mode == "square"{
		instance_create_layer(x, y, "obj", oObjectSquare); //creates an object on the mouse position (if above is true)
	}
}
