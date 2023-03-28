/// @description [CHECK FOR DELETE]

// checks if cursor is touching the object and right mouse button is placed
if place_meeting(x, y, oCursor) and (mouse_check_button(mb_right)){
	instance_destroy(); //destroys object if above is true
}