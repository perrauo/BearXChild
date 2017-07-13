/// @description Insert description here
// You can write your code in this editor

 //destroy once all chunks have spawned
 if(chunk_collider.init) //if chunk collider was init properly then destroy inst
 {
	instance_destroy(bottom_collider); //loop through all colliders
	instance_destroy(self);
 }

