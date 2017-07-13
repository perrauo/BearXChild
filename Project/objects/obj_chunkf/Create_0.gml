/// @description Insert description here
// You can write your code in this editor


direction = random(360); //this points the particle in a random direction.
speed = random_range(4,8); //this is how fast the particles will move
alarm[0] = random_range(30,60); //this will determine how long a particle exists before destroying it
motion_set(direction,speed); //this tells the particle to start moving


//LV_Speed = random_range(.8,1.2); //Movement Speed
//LV_JumpSpeed = random_range(4,7)//Jump Speed
//LV_Gravity = 0.5; //Gravity
//LV_Jumping = 0; //Flag for jumping
//LV_Jump = 1;

//hspd = 0; //Speed var init
//vspd = 0; //Speed var init
//move = irandom(1);

//if move = 0{
//    move--
//}