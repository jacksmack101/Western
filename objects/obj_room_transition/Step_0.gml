/// @description Draw the fade


fadeAlpha = clamp(fadeAlpha + (fadeState * fadeSpeed),0,1);

if(fadeAlpha == 1){
	fadeState = -1;
	obj_camera.init = false;
	room_goto(tempTarget);
	obj_player.x = obj_player.target_x;
	obj_player.y = obj_player.target_y;
		
}

if(fadeAlpha == 0 && fadeState == -1){
	instance_destroy(id,false);
}



x = obj_camera.x;
y = 0;
image_xscale = room_width / 16;
image_yscale = room_height / 16;
depth = -10000;
image_alpha = fadeAlpha;