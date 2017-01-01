//draw_set_color(c_ltgray)
x = obj_camera.x;
y = obj_camera.y;

h = camera_get_view_height(view_camera[0]);
w = camera_get_view_width(view_camera[0]);
draw_sprite(spr_textBG,0,x+8,y+5);
//draw_rectangle(x + 10 ,y + 5, x+ w - 10, y + 110 ,0)
draw_set_color(c_black)
//draw_rectangle(x  + 10,y + 5, x+ w - 10, y + 110 ,1)

var charWidth = 8;
var lineEnd = 35;
var line = 0;
var space = 0;
var i = 1;
var delay = 0;
var message_length = string_length(message);
//typewriter
if(cutoff < message_length){
	if(timer >= delay){
		cutoff++;
		timer=0;
	}else{
		timer++;
	}
	
	
}

// draw text


if(!skipped){

	while( i  <= message_length && i <= cutoff){
	
		//goto next line
		var length = 0;
		while(string_char_at(message,i) != " " && i <= message_length){
			i++;
			length++;
		}
	
		if(space + length > lineEnd){
			space = 0;
			line++;
		}
	
		i -= length;
	
		var xpos = x + 130 + (space * charWidth);
		var ypos = y + 20 + (13 * line);

		draw_text(xpos, ypos, string_char_at(message,i));
	
		space++;
		i++;
	
	}
	
	if(i == message_length){
		done = true;
	}
}else{
	while( i  <= message_length ){
	
		//goto next line
		var length = 0;
		while(string_char_at(message,i) != " " && i <= message_length){
			i++;
			length++;
		}
	
		if(space + length > lineEnd){
			space = 0;
			line++;
		}
	
		i -= length;
	
		var xpos = x + 130 + (space * charWidth);
		var ypos = y + 20 + (13 * line);

		draw_text(xpos, ypos, string_char_at(message,i));
	
		space++;
		i++;
		}
		done = true;
//draw_text_ext(x+45  ,y +20 ,string_hash_to_newline(message),16,w-90);
}

var n=0
if(done){
	repeat(dia_numanswers)
	{

	
		line++;
		ypos = y + 25 + (13 * line);
		if (dialog_skillcheck(dia_req1[n]) && dialog_skillcheck(dia_req2[n]) && dialog_skillcheck(dia_req3[n])){
			draw_set_alpha(1)
		} else {
			draw_set_alpha(0.25) 
			draw_set_color(c_black)
			var tempW = obj_camera.x + 75 +((2 + charWidth) * string_length(dia_answer[n]));
			draw_line_width(obj_camera.x + 125,ypos+6,tempW,ypos + 6,4)
		}
		draw_set_color(c_gray)
		if selected==n{
		draw_set_color(c_white)
		}
		draw_set_alpha(1)
		message_length = string_length(dia_answer[n]);
		
		while( i  <= message_length ){
	
		//goto next line
		var length = 0;
		while(string_char_at(dia_answer[n],i) != " " && i <= message_length){
			i++;
			length++;
		}
	
		if(space + length > lineEnd){
			space = 0;
			line++;
		}
	
		i -= length;
	
		var xpos = x + 130 + (space * charWidth);
		var ypos = y + 20 + (16 * line);

		draw_text(xpos, ypos, string_char_at(dia_answer[n],i));
	
		space++;
		i++;
		}
		
		draw_text_ext(x + 130,ypos,string_hash_to_newline(dia_answer[n]),16,w-100)
	
		n+=1
	}
}

draw_sprite_ext(spr_portraits,image_index,x +15,y+12,1,1,0,c_white,1.0)
draw_text(0,h-32,string_hash_to_newline(selected))