/// @description Insert description here
// You can write your code in this editor

if (loop)
{
	for (var _xx = 0; _xx < room_width; _xx++)
	{
		// Map perlin noise values (between -1, 1 to 0, room height)
		var _yy = map(noise(xoff), -1, 1, 0, room_height);
		// Push y values to the end of the array
		array_push(points, _yy);
		xoff += increment;
	}
	loop = false;
}