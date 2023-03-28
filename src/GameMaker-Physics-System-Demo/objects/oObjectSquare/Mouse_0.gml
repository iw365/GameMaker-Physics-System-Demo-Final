/// @description [PULSE]

distance = distance_to_object(oCursor);
result = lerp(minval, maxval, distance);
show_debug_message(result);
//physics_apply_force(x, y, 20000, -20000);