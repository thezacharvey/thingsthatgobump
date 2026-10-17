live_auto_call 



var mve_spd = 2

depth = -y 

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
    
    case ghost_states.gameover:
        if(distance_to_point(game_over_x,game_over_y) > 1){
                move_towards_point(game_over_x, game_over_y, mve_spd);
             image_xscale = game_over_x> x ? 1 : -1 
        }else{
            speed = 0 
        }
        break 
    case ghost_states.dying:
        speed = 0 
        x += 100 * fly_dir
        show_debug_message(fly_dir)
        //image_angle += 20
        
        break
    
	
}







