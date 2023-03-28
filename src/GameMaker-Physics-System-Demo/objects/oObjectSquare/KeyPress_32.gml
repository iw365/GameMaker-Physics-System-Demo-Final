/// @description [PULSE]

// direction and distance between the object and the cursor
var dir = point_direction(x, y, mouse_x, mouse_y);
var distance = point_distance(x, y, mouse_x, mouse_y);

// calculate force
var max_force = 300; 
var min_distance = 50; 
var max_distance = 200;

var force = lerp(0, max_force, clamp(1 - (distance - min_distance) / (max_distance - min_distance), 0, 1));
var impulse_x = force * cos(degtorad(dir));
var impulse_y = force * sin(degtorad(dir));
var max_torque = 3; 
var angular_distance = abs(dir - image_angle);
var torque = lerp(0, max_torque, clamp(1 - (angular_distance / 180), 0, 1));
var angular_impulse = torque * (dir - image_angle);

// apply force
physics_apply_impulse(x, y, -impulse_x, impulse_y);
physics_apply_angular_impulse(angular_impulse);