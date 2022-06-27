// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle() constructor
{
	pos = new vector(irandom(room_width), irandom(room_height));
	vel = new vector_random();
	accel = new vector(0, 0);
	
	static update = function()
	{
		vel.add(accel);
		pos.add(vel);
		accel.multiply(0);
	}
	
	static apply_force = function(_force)
	{
		accel.add(_force);
	}
	
	static show = function()
	{
		draw_point(pos.x, pos.y);
	}
	
	function edge_wrap()
	{	
		if (pos.x > room_width) pos.x = 0;
		if (pos.x < 0) pos.x = room_width;
		if (pos.y > room_height) pos.y = 0;
		if (pos.y < 0) pos.y = room_height;
	}

}