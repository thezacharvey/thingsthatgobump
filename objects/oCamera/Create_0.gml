
target = noone 
// uncomment this to follow oPlayer obj
//target = instance_exists(oPlayer) ? oPlayer : noone;

view_enabled = true;
view_visible[0] = true;





camera_width = 1080;
camera_height = 1080;
camera_move_speed = .5

camera_info = noone;
camera = noone;
zoom = 1



function center_cam_to_room(){
	var c_w = room_width / 2 - camera_get_view_width(camera) / 2
	var c_h = room_height / 2 - camera_get_view_height(camera) / 2
	camera_set_view_pos(camera,c_w, c_h)
}


function cam_setup(){
	
	camera_info = scr_camera_init(camera_width,camera_height,2)
	camera = camera_info.cam
	zoom = camera_info.zoom
	
	
	
	center_cam_to_room()

}




















	
	