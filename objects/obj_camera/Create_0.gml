#macro CAMERA_W 640
#macro CAMERA_H 360
#macro CAMERA_SCALE 2
#macro CAMERA_SPEED 0.1
cameraTarget = obj_target
mouse = obj_mouse


global.Camera = camera_create_view(320,180,CAMERA_W, CAMERA_H)

view_enabled = true
view_visible[0] = true
view_set_camera(0,global.Camera)

//Viewport

window_set_size(CAMERA_W * CAMERA_SCALE, CAMERA_H * CAMERA_SCALE)
surface_resize(application_surface, CAMERA_W * CAMERA_SCALE, CAMERA_H *CAMERA_SCALE)
var windowWidth = CAMERA_W * CAMERA_SCALE
var windowHeight = CAMERA_H * CAMERA_SCALE

window_set_position(display_get_width() / 2 - windowWidth /2, display_get_height() / 2 - windowHeight / 2)
