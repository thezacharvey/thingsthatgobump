

hlth = 40 
og_scale = image_xscale 
hit_scale = og_scale - .1 

enum house_states {idle, hit, dead}

state = house_states.idle 
function take_hit(_dmg){
    
    if(state == house_states.hit or state == house_states.dead  ){
        return  
    }
    
    if(hlth <= 0 and state != house_states.dead){
        state = house_states.dead
        return 
    }
    hlth -= _dmg 
    image_blend = c_red 
    image_xscale =  hit_scale
    image_yscale = hit_scale
    alarm[0] = game_get_speed(gamespeed_fps) *.15 
}