///@description That script checks if object's light has to be drawn on the view.



var vx = argument0;
var vy = argument1;
var vw = argument2;
var vh = argument3;
var max_range = argument4;

if(x > vx-max_range && x < vx+vw+max_range && y > vy-max_range && y < vy+vh+max_range)
{
return true;
}
else
{
return false;
}
