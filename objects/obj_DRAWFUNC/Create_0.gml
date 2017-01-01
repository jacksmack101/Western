/*
draw_set_color(c_gray)
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

h = camera_get_view_height(view_camera[0]);
w = camera_get_view_width(view_camera[0]);
draw_rectangle(x + 30 ,y + 10, x+ w - 30, y + h - 150 ,0)
draw_set_color(c_black)
draw_rectangle(x  + 30,y + 10, x+ w - 30, y + h - 150 ,1)

draw_text_ext(x ,y ,string_hash_to_newline(message),16,w-100)

var n=0
var tempy=0

repeat(dia_numanswers)
{

    if (dialog_skillcheck(dia_req1[n]) && dialog_skillcheck(dia_req2[n]) && dialog_skillcheck(dia_req3[n]))
    {draw_set_alpha(1)} else {draw_set_alpha(0.25) draw_set_color(c_black) draw_line_width(110,160+tempy+10,room_width-120,160+tempy+10,4)}
    draw_set_color(c_gray)
    if selected=n{draw_set_color(c_white)}
    draw_text_ext(110,160+tempy,string_hash_to_newline(dia_answer[n]),16,w-220)
    draw_set_alpha(1)
    
    tempy+=32
    n+=1
}

draw_sprite_ext(spr_portraits,image_index,x,y,3,3,0,c_white,0.9)
draw_text(0,h-32,string_hash_to_newline(selected))





*/