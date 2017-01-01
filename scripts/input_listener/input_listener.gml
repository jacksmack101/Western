
keyRight = false;
keyLeft = false;
keyUp = false;
keyDown = false;
keySpace = false;
keyShift = false;


if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	keyRight = true;
}

if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	keyLeft = true;
	
}
if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	keyUp = true;
}

if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	keyDown = true;
	
}
if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))){
	keySpace = true;
}
if(keyboard_check(vk_shift)){
	keyShift = true;
}