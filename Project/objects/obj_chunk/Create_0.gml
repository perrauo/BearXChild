/// @description Insert description here

// You can write your code in this editor
randomize();

LV_Speed = random_range(.8,1.2); //Movement Speed
LV_JumpSpeed = random_range(4,7)//Jump Speed
LV_Gravity = 0.5; //Gravity
LV_Jumping = 0; //Flag for jumping
LV_Jump = 1;

hspd = 0; //Speed var init
vspd = 0; //Speed var init
move = irandom(1);

mask_index = spr_chunk_collision; 

if(move == 0)
{
    move--
}