//exit if there is no player
if !instance_exists(Obj_player)exit;

//Get camera size
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

var _camX = Obj_player.x - _camWidth;
var _camY = Obj_player.y - _camHeight;

camera_set_view_pos(view_camera[0], _camX, _camY);