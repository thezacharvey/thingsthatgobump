live_auto_call

if(instance_exists(oHouse)){
    if(oHouse.state != house_states.dead and oHouse.hlth <= 0){
        with(oPunkGhost){
            state = ghost_states.gameover
        }
        oHouse.sprite_index = house_destroyed
    }
}

if(keyboard_check_pressed(ord("R"))){
    game_restart()
}