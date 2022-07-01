/// @description Insert description here
// You can write your code in this editor

xoff = 0;
y_start = 0;
yoff = y_start;	
zoff = 0;
increment = 0.1;

global.scl = 10;

cols = room_width/global.scl;
rows = room_height/global.scl;

particles = [];


global.flowfield = ds_grid_create(cols, rows);
ds_grid_clear(global.flowfield, 0);

for (var i = 0; i < 100; i++)
{
	particles[i] = new particle();	
}