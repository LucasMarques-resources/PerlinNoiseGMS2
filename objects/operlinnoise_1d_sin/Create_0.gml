/// @description Insert description here
// You can write your code in this editor

xoff = random(1000);
increment = 0.02;

points = [];
noise_map_value = 90;

for (var _xx = 0; _xx < room_width; _xx++)
{
	var _noise = map(noise(xoff), -1, 1, -noise_map_value, noise_map_value);
	var _sin = map(sin(xoff), -1, 1, 0, room_height);
	var _yy = _sin + _noise;
	// Push y values to the end of the array
	array_push(points, _yy);
	xoff += increment;
}