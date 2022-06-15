/// @description Insert description here
// You can write your code in this editor

var _noise = map(noise(xoff), -1, 1, -noise_map_value, noise_map_value);
var _sin = map(sin(xoff), -1, 1, 0, room_height);
var _yy = _noise + _sin;
array_push(points, _yy);
array_delete(points, 0, 1);

xoff += increment;