/// @description Insert description here
// You can write your code in this editor

surface = -1;

loop = true;
xoff = 0;
y_start = 0;
yoff = y_start;
zoff = 0;
increment = 0.1;

scl = 10;
cols = floor(room_width/scl);
rows = floor(room_height/scl);

particles = [];

for (var i = 0; i < 100; i++)
{
	particles[i] = new particle();	
}