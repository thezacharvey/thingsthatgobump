live_auto_call 



var mve_spd = 2

switch (state) {
    case ghost_states.idle:
        
        if(instance_exists(oHouse)){
            if(distance_to_object(oHouse) > 50){
                move_towards_point(oHouse.x, oHouse.y, mve_spd);
            }else{
                speed = 0 
                
                    state = ghost_states.attacking
                    jumping_up = true 
                    jump_og_y = y
                    jump_og_x = x + random_range(-50, 50)
                    jump_tar_y = y - sprite_height /6 
                    alarm[0] = 1 
                
            }
            
            image_xscale = oHouse.x > x ? 1 : -1 
        }
        break; 
    case ghost_states.attacking:
        break 
    
	
}



if(keyboard_check_pressed(ord("Q"))){
    
    x =og_x 
    y = og_y 
}







