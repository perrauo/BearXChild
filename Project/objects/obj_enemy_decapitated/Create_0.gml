/// @description Init State

var ww = sprite_get_width(sprite_index); //we need to know how wide

var hh = sprite_get_height(sprite_index); //and how tall our sprite is

var chunk_size = 20; //this is how big your chunks will be in pixels

for (i=0;i<ww;i+=chunk_size) 
{ //we loop 4 pixel at a time all the way across

	for (j=0;j<hh;j+=chunk_size)
	{ //while picking all the vertical pixels in each column
 
	var chunk = instance_create_depth(x+i,y+j,depth+1,obj_chunk);
	//we create a particle relative to the object, offset by the proper amount
	chunk.spr = sprite_index; //we need to tell the particle which sprite to draw. in this case, it's drawing the sprite of the object that's creating it
	chunk.size = chunk_size;
	chunk.xx = i; //we'll need the particles to have these values so they can draw the right part of the sprite
	chunk.yy = j;
 
	}
}
 
   	//Create floor collider
	chunk_collider = instance_create_depth(x,y, depth-1, obj_collider);
	chunk_collider.TYPE = COLLIDER_TYPE.FX;
	chunk_collider.color = c_green;

	chunk_collider.height = 2; //dims
	chunk_collider.width = 400;
	chunk_collider.offset_x = -100;//offsets
	chunk_collider.offset_y = 50;
 

