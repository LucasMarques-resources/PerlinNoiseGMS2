/// @description Insert description here
// You can write your code in this editor

var _yy = map(noise(xoff), -1, 1, 0, room_height);
array_push(points, _yy);
array_delete(points, 0, 1);

xoff += increment;