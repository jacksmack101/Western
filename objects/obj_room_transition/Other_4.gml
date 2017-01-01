/// @description Insert description here
var xMargin = screenXMargin
init = false;
targX = obj_player.x - (game_width/2);
targY = obj_player.y - round(game_height*.8);
obj_camera.x = targX;
obj_camera.y = targY;

if(obj_camera.x < screenXMargin ){
	obj_camera.x = screenXMargin;
	obj_camera.speed = 0;	
}
if(obj_camera.x > room_width - game_width - screenXMargin ){
	obj_camera.x = room_width - game_width - screenXMargin;
	obj_camera.speed = 0;	
}
camera_set_view_pos(view_camera[0],obj_camera.x, obj_camera.y);	

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);


y =  targY;

	
	

