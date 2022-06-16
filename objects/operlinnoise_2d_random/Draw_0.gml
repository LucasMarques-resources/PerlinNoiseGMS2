/// @description Insert description here
// You can write your code in this editor

var _inc = 1;
for (var i = 0; i < room_width; i += _inc)
{
	for (var j = 0; j < room_height; j += _inc)
	{
		var _color = random(255);
		draw_set_color(make_color_rgb(_color, _color, _color));
		draw_rectangle(i, j, i + _inc, j + _inc, false);
	}
}