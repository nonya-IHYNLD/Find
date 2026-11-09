//Keyboard Input 
var _move_right = keyboard_check(ord("D")) || keyboard_check(vk_right) 
var _move_left = keyboard_check(ord("A")) || keyboard_check(vk_left)  
var _move_down = keyboard_check(ord("S")) || keyboard_check(vk_down)
var _move_up = keyboard_check(ord("W")) || keyboard_check(vk_up)
//Movement Speed
var _speed = 4;
var _target_vx = _move_x * _speed;
var _target_vy = _move_y * _speed;

//Hoprizontal Collision System
if (place_meeting(x + _target_vx, y, obj_wall)) {
	while (!place_meeting(x+ sign(_target_vx), y, obj_wall)) {
		x += sign(_target_vx); // Move flush against the wall
	}
	_target_vx = 0; //Stop horizontal speed
}
x += _target_vx; //Apply horizontal movement

//Vertical Collision System
if (place_meeting(x, y + _target_vy, obj_wall)) {
	while (!place_meeting(x, y+ sign(_target_vy), obj_wall)) {
		y += sign(_target_vy); // MOve flush againest the wall
	}
	_target_vy = 0; //Stop vertical speed
}
y += _target_vy; //Apply vertical movement