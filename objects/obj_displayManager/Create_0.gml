/// @description 

ideal_width = 0;
ideal_height = 270;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

if(ideal_width & 1){
ideal_width++;
}


for (var i = 1; i <= room_last; i++){
	if(room_exists(i)){
		room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);
		room_set_view_enabled(i, true);
		
	}
	
	
}
room_goto_next();