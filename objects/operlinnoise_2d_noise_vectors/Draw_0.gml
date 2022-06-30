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
			
		var _vec = new vector_lengthdir(global.scl, _dir_map);
		draw_line(xx * global.scl, yy * global.scl, xx * global.scl + _vec.x, yy * global.scl + _vec.y);
			
		yoff += increment;
	}
	xoff += increment;
		
	zoff += 0.001;
}
xoff = 0;
yoff = 0;