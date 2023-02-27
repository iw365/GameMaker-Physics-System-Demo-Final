/// @description [DRAW]
draw_set_font(fnText);

if oCursor.debug == true{
	draw_text(890, 70, "Left Click to place a physics object");
	draw_text(890, 90, "Right Click to remove a physics object");
	draw_text(890, 110, "Cube Count: " + string(instance_number(oObjectSquare)));
	draw_text(890, 130, "FPS: " + string(fps));
	draw_text(890, 150, "Press Q to hide");
}