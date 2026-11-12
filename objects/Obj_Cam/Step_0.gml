
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

var _camX = Obj_player.x - (_camWidth / 2);
var _camY = Obj_player.y - (_camHeight / 2);

// Keep camera inside room
_camX = clamp(_camX, 0, 16000 - _camWidth);
_camY = clamp(_camY, 0, 16000 - _camHeight);

camera_set_view_pos(view_camera[0], _camX, _camY);