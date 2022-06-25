/// @description Insert description here
// You can write your code in this editor

surface = surface_create(room_width, room_height);

loop = true;
xoff = random(100);
y_start = random(100);
yoff = y_start;
zoff = 0;
increment = 0.1;

scl = 10;
cols = floor(room_width/scl);
rows = floor(room_height/scl);