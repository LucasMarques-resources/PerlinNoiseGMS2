/// @description Insert description here
// You can write your code in this editor

//var _xx = random(room_width);

var _yy = map(noise(yoff), -1, 1, 0, room_height);

yoff += increment;

draw_circle(room_width/2, _yy, 10, false);