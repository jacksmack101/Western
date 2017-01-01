/// @description Control Player States
script_execute(input_listener);
script_execute(state);
parallaxOffset[0] = 0;

random_set_seed(123412341342);

for (var i = 1; i <= room_last; i++){
	if(room_exists(i)){
		parallaxOffset[i] = random_range(20, 1000)
	}
}
script_execute(ParalaxController,room);

if(mouse_check_button_pressed(mb_left)){
var bullet_id;
	var xtemp = obj_arm.x + lengthdir_x(LenX,obj_arm.image_angle) - lengthdir_y(LenY, obj_arm.image_angle);
	if(obj_arm.image_yscale < 1){
		var ytemp = obj_arm.y + lengthdir_y(LenX, obj_arm.image_angle) + lengthdir_x(LenY, obj_arm.image_angle);
	}else{
		var ytemp = obj_arm.y + lengthdir_y(LenX, obj_arm.image_angle) + lengthdir_x(LenY, obj_arm.image_angle);
	}
	
	shootx = xtemp;
	shooty = ytemp;
	bullet_id = instance_create_layer(xtemp,ytemp,"characters",obj_bullet);
	bullet_id.direction = obj_arm.image_angle;
	bullet_id.image_angle = bullet_id.direction;
	bullet_id.speed = 16;
}