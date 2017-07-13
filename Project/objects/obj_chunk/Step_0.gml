/// @description Insert description here
// You can write your code in this editor

///Movement


    ///////////////////
    //Calculate Input//
    ///////////////////
    		
    //LEFT RIGHT
    if (move == 1 && place_meeting_with_collider(x+1, y, COLLIDER_TYPE.FX))
    {
        move = -1
    }
    else if (move == -1 and place_meeting_with_collider(x-1, y, COLLIDER_TYPE.FX))
    {
        move = 1
    }
    
    
    hspd = move * LV_Speed
    
    //JUMP
    if (vspd < 7) 
    {
        vspd += LV_Gravity
    }
    
    if (place_meeting_with_collider(x, y+1, COLLIDER_TYPE.FX))
    {
        vspd = LV_Jump * -LV_JumpSpeed
        
        if LV_JumpSpeed > 0{ //Decrease speed and bounce
            
            LV_Speed -= 0.2;
            LV_JumpSpeed -= 1;
            
            if  LV_Speed < 0{ //If speed is negative, make 0
            
                LV_Speed = 0;
            }
        }
        else{ //When jumpspeed is 0 or less, jump is removed
            
            LV_Speed = 0;
            LV_Jump = 0;
        }
    }
   
    /////////////
    //Collision//
    /////////////
	
	
    //VERTICAL
    if (place_meeting_with_collider(x, y+vspd, COLLIDER_TYPE.FX))
    {
	    while (!place_meeting_with_collider(x, y+sign(vspd), COLLIDER_TYPE.FX))
        {
            y += sign(vspd);
        }
        vspd = 0;
        
    }
    
    //HORIZONTAL
    if (place_meeting_with_collider(x+hspd, y, COLLIDER_TYPE.FX))
    {
        //Check for slope
        var yplus = 0;
        while (place_meeting_with_collider(x+hspd, y-yplus, COLLIDER_TYPE.FX) and yplus <= abs(1*hspd))
        {
            yplus +=1   
        }
        
        //If hit a wall, check for collision
        if (place_meeting_with_collider(x+hspd, y-yplus, COLLIDER_TYPE.FX))
        {
            while (!place_meeting_with_collider(x+sign(hspd), y, COLLIDER_TYPE.FX))
            {
                x += sign(hspd);
            }
            hspd = 0;
        }
        //If hit a slope, move up or down
        else
        {
            y -= yplus;
        }
    }
    
    ////////////////////
    //Stop Bounce/Move//
    ////////////////////
    
    
    /////////////
    //Change XY//
    /////////////
    
    x += hspd
    y += vspd

