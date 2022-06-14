/// @description Insert description here
// You can write your code in this editor

//var _xx = random(room_width);

var _xx = map(noise(xoff1), -1, 1, 0, room_width);
var _yy = map(noise(xoff2), -1, 1, 0, room_height);

xoff1 += increment;
xoff2 += increment;

draw_circle(_xx, _yy, 10, false);