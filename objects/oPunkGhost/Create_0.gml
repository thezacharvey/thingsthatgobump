

og_x = x 
og_y = y 

jump_tar_y = y 
jump_og_x = x 
jump_og_y = y 
jump_speed = irandom_range(1,4)
game_over_x = og_x  
game_over_y = og_y  
fly_dir = 1 


dmg = 1 
enum ghost_states {
    idle, going_to, attacking, dying, gameover 
}
state = ghost_states.idle 
jumping_up = false 