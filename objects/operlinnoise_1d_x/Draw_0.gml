/// @description Insert description here
// You can write your code in this editor

//var _xx = random(room_width);

var _xx = map(noise(xoff), -1, 1, 0, room_width);

xoff += increment;

draw_circle(_xx, room_height / 2, 10, false);