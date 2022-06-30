/// @description Insert description here
// You can write your code in this editor

var _inc = 1;

for (var xx = 0; xx < ds_grid_width(global.flowfield); xx += _inc)
{
	yoff = y_start;
	for (var yy = 0; yy < ds_grid_height(global.flowfield); yy += _inc)
	{	
		var _dir = noise(xoff, yoff, zoff);
		_dir_map = map(_dir, -1, 1, 0, 359);
			
		var _vec = new vector_lengthdir(global.scl, _dir_map);
		var _vec_add = vector_copy(_vec);
		_vec_add.set_magnitude(0.01);
		
		ds_grid_add(global.flowfield, xx, yy, _vec_add);
		
		draw_set_alpha(.5);
		draw_line((xx + 1) * global.scl, (yy + 1) * global.scl, (xx + 1) * global.scl + _vec.x, (yy + 1) * global.scl + _vec.y);
		draw_set_alpha(1);
			
		yoff += increment;
	}
	xoff += increment;
	
	//zoff += 0.001;
}
xoff = 0;
yoff = 0;

if (global.debugMode)
{
	draw_set_alpha(.5);
	for (var i = 0; i < ds_grid_width(global.flowfield); i++)
	{
		draw_line(i * global.scl, 0, i * global.scl, room_height);
	}

	for (var j = 0; j < ds_grid_height(global.flowfield); j++)
	{
		draw_line(0, j * global.scl, room_width, j * global.scl);
	}
	draw_set_alpha(1);
}

for (var i = 0; i < array_length(particles); i++)
{
	particles[i].follow();
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
			
//				var _vec = new vector_lengthdir(global.scl, _dir_map);
//				draw_line((xx * global.scl) * 2, (yy * global.scl) * 2, (xx * global.scl + _vec.x) * 2, (yy * global.scl + _vec.y) * 2);
			
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