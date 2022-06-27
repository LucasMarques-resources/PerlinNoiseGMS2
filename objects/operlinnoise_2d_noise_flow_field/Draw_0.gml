/// @description Insert description here
// You can write your code in this editor

var _inc = 1;

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
xoff = 0;
yoff = 0;

for (var i = 0; i < array_length(particles); i++)
{
	particles[i].update();
	particles[i].show();
	particles[i].edge_wrap();
}

//if (!surface_exists(surface))
//{
//	surface = surface_create(view_wport[0], view_wport[0]);
//	surface_set_target(surface);
//	draw_clear_alpha(c_black, 0);
//	surface_reset_target();
//}
//else // Drawing to a surface in a slightly bad way
//{	
//	surface_set_target(surface);
	
//	var _inc = 1;
//	if (loop)
//	{
//		for (var xx = 0; xx < cols; xx += _inc)
//		{
//			yoff = y_start;
//			for (var yy = 0; yy < rows; yy += _inc)
//			{	
//				var _dir = noise(xoff, yoff, zoff);
//				_dir_map = map(_dir, -1, 1, 0, 359);
			
//				var _vec = new vector_lengthdir(scl, _dir_map);
//				draw_line((xx * scl) * 2, (yy * scl) * 2, (xx * scl + _vec.x) * 2, (yy * scl + _vec.y) * 2);
			
//				yoff += increment;
//			}
//			xoff += increment;
		
//			//zoff += 0.001;
//		}
//		loop = false;
//	}

//	surface_reset_target();

//	draw_surface_ext(surface, 0, 0, .5, .5, 0, c_white, 1.0);
//}