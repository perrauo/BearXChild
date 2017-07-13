/// @description Insert description here
// You can write your code in this editor


if(image_index >= image_number-1)
{
	image_speed = 0;
	alpha = lerp(alpha, 0, alpha_delta);
}

if(alpha <= 0)
{
	instance_destroy();
}