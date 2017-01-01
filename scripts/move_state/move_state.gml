///move_state()

// movement
	/* TODO:
	// find the floor you should be on
	//check if you have hit a wall
	*/

var xv = 0;
var yv = 0;


// walking left and right
walking = false;
if(!climbing){
	if(keyRight){
		xv += moveSpeed;
		walking = true;
	}

	if(keyLeft){
		xv -= moveSpeed;
		walking = true;
	}
}

running = false;
moveSpeed = walkSpeed;
if(keyShift){
	running = true;
	moveSpeed = runsSpeed;
}

if(floor(image_index) == 1 ){
	if !audio_is_playing(snd_spurWalk_1)
	{
		var spur_sound = audio_play_sound(snd_spurWalk_1,100,0);
		audio_sound_pitch(spur_sound, random_range(0.9,1.1));
	}
}
if(floor(image_index) == 4 ){
	if !audio_is_playing(snd_spurWalk)
	{
		var spur_sound = audio_play_sound(snd_spurWalk,100,0);
		audio_sound_pitch(spur_sound, random_range(1.2,1.3));
	}
}


if(position_meeting((x + xv),y-5,obj_wall)){
xv = 0;
}
x += xv;
if(xv != 0){
image_xscale = sign(xv);
}
// interacting with objects

// hitting triggers
if(keySpace){
	
	
	var inst;
	
	// check for ladder collisions
	inst = instance_position(x,y,obj_ladder);
	if(inst != noone){
		busy = true;
		climbing = true;
		x = inst.x;
		if(y < inst.y){
			climbTarget = [x, inst.y];
		}else{
			climbTarget = [x, inst.y - inst.sprite_height +32];
		}
	}
	// check for stair collisions
	inst = instance_position(x,y,obj_stairs);
	if(inst != noone){
	var climbNow = false;
	var climbX = 0;
	var climbY = 0;
		if(obj_player.y < inst.y && obj_player.x > inst.bbox_right - (inst.sprite_width*.15)){
			climbX = inst.bbox_left;
			climbY = inst.bbox_bottom ;
			climbNow = true;
			//x =  inst.bbox_right - (inst.sprite_width*.08);
			image_xscale = -1;
		}else if(obj_player.y > inst.y && obj_player.x < inst.bbox_left + (inst.sprite_width*.15)){
			climbX = inst.bbox_right;
			climbY = inst.bbox_top +10 ;
			climbNow = true;
			//x =  inst.bbox_left + (inst.sprite_width*.08);
			image_xscale = 1;
		}
		if(climbNow){
			busy = true;
			stairs = true;
			stairTarget = [climbX,climbY];
			climbing = true;
			climbTarget = [climbX,climbY];
			
		}
		
	}
	
	
	inst = instance_position(x,y,obj_stairs_2);
	if(inst != noone){
	var climbNow = false;
	var climbX = 0;
	var climbY = 0;
		if(obj_player.y > inst.y && obj_player.x > inst.bbox_right - (inst.sprite_width*.15)){
			climbX = inst.bbox_left;
			climbY = inst.bbox_top +10 ;
			climbNow = true;
			//x =  inst.bbox_right - (inst.sprite_width*.08);
			image_xscale = -1;
		}else if(obj_player.y < inst.y && obj_player.x < inst.bbox_left + (inst.sprite_width*.15)){
			climbX = inst.bbox_right;
			climbY = inst.bbox_bottom ;
			climbNow = true;
			//x =  inst.bbox_left + (inst.sprite_width*.08);
			image_xscale = 1;
		}
		if(climbNow){
			busy = true;
			stairs = true;
			stairTarget = [climbX,climbY];
			climbing = true;
			climbTarget = [climbX,climbY];
			
		}
		
	}
	
	
	inst = instance_position(x,y,obj_door);
	if(inst != noone){
		target_x = inst.target_x;
		target_y = inst.target_y;
		
		
		//room_goto(inst.target_room);
		if(!instance_exists(obj_room_transition)){
			
			var tempRoomFade; 
			tempRoomFade = instance_create_depth(0,0,-10000, obj_room_transition);
			tempRoomFade.tempTarget = inst.target_room;
			waitGoal = 20;
			walking = false;
			state = wait_state;
		}
		//room_goto(inst.target_room);
	}
}

// cutscene actions
if(busy){
	// if using a ladder
	if(climbing){
		move_towards_point(climbTarget[0], climbTarget[1], climbSpeed);
		if(point_distance(climbTarget[0], climbTarget[1],x,y) <= climbSpeed){
			speed = 0;
			climbing = false;
			busy = false;
			
			x = climbTarget[0];
			y = climbTarget[1];
			waitGoal=10;
			state = wait_state;
		}
	}
}


//animtion states


	if(climbing){
		if(sprite_index != spr_player_climb){
			sprite_index = spr_player_climb;
		}
	}else if(walking){
		if(sprite_index != spr_player_walk){
			sprite_index = spr_player_walk;
		}
	}else{
		if(sprite_index != spr_player_idle){
		if(stop_walking){
			if !audio_is_playing(snd_spurWalk_1)
			{
				var spur_sound = audio_play_sound(snd_spurWalk_1,100,0);
				audio_sound_pitch(spur_sound, random_range(0.9,1.1));
			}
		}
			sprite_index = spr_player_idle;
		}
	}	
	



