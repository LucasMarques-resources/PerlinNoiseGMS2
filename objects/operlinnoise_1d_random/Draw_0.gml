/// @description Insert description here
// You can write your code in this editor

//for (var i = 0; i < array_length(points); i += 2)
//{
//	draw_point(points[i], points[i + 1]);
//}

for (var i = 1; i < array_length(points); i++)
{
	draw_line((i - 1), points[i - 1], i, points[i]);
}