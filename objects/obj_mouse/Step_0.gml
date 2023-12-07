
x = mouse_x
y = mouse_y

var _camera_width;
var _camera_height;


if mouse_pressed{
	
	_camera_width = camera_get_view_width(global.Camera)
	_camera_height = camera_get_view_height(global.Camera)
	
	var _camera_x = camera_get_view_x(global.Camera)
	var _camera_y = camera_get_view_y(global.Camera)
	
	var _target_x = target.x - _camera_width / 2
	var _target_y = target.y - _camera_height / 2
	
	
	
	_camera_x = lerp(_camera_x, _target_x, CAMERA_SPEED)
	_camera_y = lerp(_camera_y, _target_y, CAMERA_SPEED)
	
	camera_set_view_pos(global.Camera, _camera_x, _camera_y)
	
	timer_min += 1
}
if timer_min > timer_max{
		//apply
		var _mouse_check = -0.009
		
		
	
		_mouse_check += -0.009
		// Hou much we want to add
		var _add_width = _camera_width * mouse_check
		var _add_height = _camera_height * mouse_check
		
		//cameraWidth += addWidth
		//cameraHeight += addHeight
	
		//clamp
		_camera_width = clamp(_camera_width, CAMERA_W / 3, room_width)
		_camera_height = clamp(_camera_height, CAMERA_H / 3, room_height)
		
		
	
		_camera_width += _add_width
		_camera_height +=_add_height
	
		
		
		
		
		camera_set_view_pos(global.Camera, target.x - _camera_width/2, target.y - _camera_height/2)
		camera_set_view_size(global.Camera, _camera_width, _camera_height)
		
		
		
	
	
	}

	
if keyboard_check(vk_space){
	room_restart()
}
	
	
