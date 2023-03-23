/// @description []
if debug == true {
	debug = false
	time = 30
	show_debug_overlay(false); //hides debug info in top right
}
else if debug == false {
	debug = true
	time = 30
	show_debug_overlay(true); //shows debug info in top right
}