//Keyboard Input 
var _move_right = keyboard_check(ord("D")) || keyboard_check(vk_right) 
var _move_left = keyboard_check(ord("A")) || keyboard_check(vk_left)  
var _move_down = keyboard_check(ord("S")) || keyboard_check(vk_down)
var _move_up = keyboard_check(ord("W")) || keyboard_check(vk_up)

var _xaxis = _move_right - _move_left;
var _yaxis = _move_down - _move_up;

//Movement Speed
hspd = _xaxis * move_speed;
vspd = _yaxis * move_speed;

//Hoprizontal Collision System
if (place_meeting(x + hspd, y, obj_wall)) {
	while (!place_meeting(x+ sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0; //Stop horizontal speed
}
x += hspd; //Apply horizontal movement

//Vertical Collision System
if (place_meeting(x, y + vspd, obj_wall)) {
	while (!place_meeting(x, y+ sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
    vspd = 0; //Stop vertical speed
}
y += vspd; //Apply vertical movement