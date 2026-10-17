



live_auto_call




depth = -y 



hsp = keyboard_check(ord("D")) - keyboard_check(ord("A")) 
vsp = keyboard_check(ord("S")) - keyboard_check(ord("W")) 


if(hsp != 0){
    image_xscale = sign(hsp)
}



var gh = collision_point(x,y,oPunkGhost,false,true)
if(instance_exists(gh) and gh.state != ghost_states.dying){
    //instance_destroy(gh)
    gh.state = ghost_states.dying 
    gh.fly_dir = sign(image_xscale)
}

if(keyboard_check_pressed(vk_shift) and boosting == false){
    mve_spd = boost_spd
    boosting  = true 
    alarm[0] = game_get_speed(gamespeed_fps) * boost_cooldown
}





x += hsp * mve_spd  
y += vsp * mve_spd

