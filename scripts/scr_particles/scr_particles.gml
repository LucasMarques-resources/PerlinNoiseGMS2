// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function particle()
{
	pos = new vector(0, 0);
	vel = new vector(0, 0);
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
}