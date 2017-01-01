var camMoveSpeed = obj_player.moveSpeed;

var yMargin = game_height * .2;
var targX, targY;
	targX = obj_player.x - (game_width/2);
	targY = obj_player.y - + round(game_height*.8);
if(instance_exists(obj_player)){
	if(init == false){
		init = true;
		camera_set_view_speed(view_camera[0],0,0);
		x =targX;
		y = targY;
		if(x < screenXMargin ){
			x = screenXMargin;
			speed = 0;	
		}
		if(x > room_width - game_width - screenXMargin ){
			x = room_width - game_width - screenXMargin;
			speed = 0;	
		}	
	
	}
	
if(x != targX || y != targY ){
	
		move_towards_point(targX ,targY, camMoveSpeed);
		if(point_distance(x,y,targX,targY) <= camMoveSpeed){
			x = targX;
			y = targY;
			speed = 0;
		}
		
	if(x - targX < -camMoveSpeed){
		x = targX - camMoveSpeed;
	}else if(x - targX > camMoveSpeed){
		x = targX + camMoveSpeed;
	}
		
	if(x < screenXMargin ){
		x = screenXMargin;
		speed = 0;		
	}
	if(x > room_width - game_width - screenXMargin ){
		x = room_width - game_width - screenXMargin;
		speed = 0;		
	}
	if(y - targY < -camMoveSpeed){
		y = targY - camMoveSpeed;
	}else if(y - targY > camMoveSpeed){
		y = targY + camMoveSpeed;
	}
}
camera_set_view_pos(view_camera[0], x , y);
}