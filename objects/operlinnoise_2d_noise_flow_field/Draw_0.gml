/// @description Insert description here
// You can write your code in this editor

var _inc = 1;
if (loop)
{
	surface_set_target(surface);
	for (var xx = 0; xx < cols; xx += _inc)
	{
		yoff = y_start;
		for (var yy = 0; yy < rows; yy += _inc)
		{	
			var _dir = noise(xoff, yoff, zoff);
			_dir_map = map(_dir, -1, 1, 0, 359);
			
			var _vec = new vector_lengthdir(scl, _dir_map);
			draw_line(xx * scl, yy * scl, xx * scl + _vec.x, yy * scl + _vec.y);
			
			yoff += increment;
		}
		xoff += increment;
		
		zoff += 0.001;
	}
	surface_reset_target();
	loop = false;
}

draw_surface(surface, 0, 0);