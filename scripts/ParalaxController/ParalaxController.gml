///ParalaxController(ROOM)



var xpos = camera_get_view_x(view_camera[0]) / (room_width - camera_get_view_width(view_camera[0]));
var ypos = camera_get_view_y(view_camera[0]) / (room_height - camera_get_view_height(view_camera[0]));

//var xpos = view_xview / (room_width-view_wview);
//var ypos = view_yview / (room_height-view_hview);
var hmargin, vmargin, layer_id, layer_id1

hmargin = 1000;
vmargin = 50;

layer_id = layer_get_id("Backgrounds_1");
layer_x(layer_id,camera_get_view_x(view_camera[0]));
layer_y(layer_id, camera_get_view_y(view_camera[0]));



layer_id = layer_get_id("Backgrounds_2");
layer_x(layer_id, lerp(0 - obj_player.parallaxOffset[room] , -obj_player.parallaxOffset[room]-10+(room_width - camera_get_view_width(view_camera[0])) , xpos ));
layer_y(layer_id, lerp(0 ,-10+(room_height - camera_get_view_height(view_camera[0])) , ypos ));

layer_id = layer_get_id("Backgrounds_3");
layer_x(layer_id, lerp(-100 - obj_player.parallaxOffset[room] , -obj_player.parallaxOffset[room]-150+(room_width - camera_get_view_width(view_camera[0])) , xpos ));
layer_y(layer_id, lerp(110 ,90+(room_height - camera_get_view_height(view_camera[0])) , ypos ));
//background_y[0] = lerp(0,room_width-background_width[0], ypos);

 
switch(argument0){

default:
	// do nothing

	
break;

case room_1:
	
break;

}


