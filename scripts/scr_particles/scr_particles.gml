// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle() constructor
{
	//pos = new vector(irandom(room_width), irandom(room_height));
	pos = new vector(irandom(ds_grid_width(global.flowfield) * global.scl), irandom(ds_grid_height(global.flowfield) * global.scl));
	vel = new vector(0, 0);
	accel = new vector(0, 0);
	max_speed = 3;
	
	prev = vector_copy(pos);
	
	static update = function()
	{
		vel.add(accel);
		vel.limit_magnitude(max_speed);
		pos.add(vel);
		accel.multiply(0);
	}
	
	static follow = function()
	{
		var _x = floor(pos.x / global.scl);
		var _y = floor(pos.y / global.scl);
		_x = map(pos.x, 0, ds_grid_width(global.flowfield) * global.scl, 0, ds_grid_width(global.flowfield) - 1);
		_y = map(pos.y, 0, ds_grid_height(global.flowfield) * global.scl, 0, ds_grid_height(global.flowfield) - 1);

		var _force = ds_grid_get(global.flowfield, _x, _y);
		apply_force(_force);
	}
	
	static apply_force = function(_force)
	{
		accel.x += _force.x;
		accel.y += _force.y;
	}
	
	static update_previous = function()
	{
		prev.x = pos.x;
		prev.y = pos.y;
	}
	
	function edge_wrap()
	{
		if (pos.x > ds_grid_width(global.flowfield) * global.scl)
		{
			pos.x = 0;
			update_previous();
		}
		if (pos.x < 0)
		{
			pos.x = ds_grid_width(global.flowfield) * global.scl;
			update_previous();
		}
		if (pos.y > ds_grid_height(global.flowfield) * global.scl)
		{
			pos.y = 0;
			update_previous();
		}
		if (pos.y < 0)
		{
			pos.y = ds_grid_height(global.flowfield) * global.scl;
			update_previous();
		}
	}
	
	static show = function()
	{
		draw_set_alpha(.5);
		//draw_point(pos.x, pos.y);
		draw_line(pos.x, pos.y, prev.x, prev.y);
		draw_set_alpha(1);
		update_previous();
	}

}