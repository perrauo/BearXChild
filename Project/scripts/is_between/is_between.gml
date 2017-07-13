/// @description Check if given is between
/// @param xx
/// @param a
/// @param b
/// @return bool

var xx = argument0;
var a = argument1;
var b = argument2;

var left = min(a,b);
var right = max(a,b);

return (left <= xx && xx <= right)