/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(surface))
{
	surface = surface_create(room_width, room_height);
}

var _inc = 1;
if (loop)
{
	surface_set_target(surface);
	for (var xx = 0; xx < room_width; xx += _inc)
	{
		yoff = y_start;
		for (var yy = 0; yy < room_height; yy += _inc)
		{
			var _color = noise(xoff, yoff);
			_color_map = map(_color, -1, 1, 0, 255);
			
			draw_set_color(make_color_rgb(_color_map, _color_map, _color_map));
			draw_rectangle(xx, yy, xx + _inc, yy + _inc, false);
			yoff += increment;
		}
		xoff += increment;
	}
	surface_reset_target();
	loop = false;
}

draw_surface(surface, 0, 0);