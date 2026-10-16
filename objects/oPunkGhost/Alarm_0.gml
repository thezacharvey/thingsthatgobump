live_auto_call

if(state !=  ghost_states.attacking){
    return 
}

  if (abs(image_angle) > 0){
    image_angle -= .1 * image_xscale
}




if(jumping_up){
    
    if(y > jump_tar_y){
        y -= jump_speed; 
      
        
    }else{
        jumping_up = false 
    }
    
    alarm[0] = 1
}else{
    if ( y < jump_og_y){
         y += jump_speed; 
    }else{
        jumping_up = true 
        if(instance_exists(oHouse)){
           oHouse.take_hit(dmg)
        }
        //wait half a second to jump 
          image_angle = 5 * image_xscale
        alarm[0] = game_get_speed(gamespeed_fps) * 2
    }
     alarm[0] = 1
}
         




