/// @description Insert description here
// You can write your code in this editor
var headOffsets = [[0]];

if(mouse_x < obj_player.x){
	image_yscale = -1;
	obj_player.image_xscale = -1;
}else{
	image_yscale = 1;
	obj_player.image_xscale = 1;
}
var walkOffset = 0;

x = obj_player.x +walkOffset + (11 * image_yscale);
y = obj_player.y - 58;
//image_angle = point_direction(x,y,obj_player.x,obj_player.y - (obj_player.sprite_height/2));

image_angle = point_direction(x,y,mouse_x, mouse_y);
if(obj_player.image_xscale >0){
image_angle = (floor(image_angle) div 30) *30;
}else{
image_angle = ((floor(image_angle) div 30)+1) *30;
}
obj_head.x = obj_player.x +(4*obj_player.image_xscale);
obj_head.y = obj_player.y - 63;

obj_head.image_xscale = obj_player.image_xscale;
var hdir = point_direction(obj_head.x,obj_head.y,mouse_x, mouse_y);
if(obj_player.walking){
	obj_head.sprite_index = spr_blank ;
}else{

show_debug_message("round(hdir) div 30: "+string(floor(hdir) div 30))
switch(floor(hdir) div 30){

case 0:
case 5:
obj_head.sprite_index = spr_head1;
break;

case 1:
case 4:
obj_head.sprite_index = spr_head2;

break;

case 2:
case 3:
obj_head.sprite_index = spr_head;
break;

case 6:
case 11:
obj_head.sprite_index = spr_head_down_1;
break;

case 7:
case 8:
case 9:
case 10:
obj_head.sprite_index = spr_head_down;
break;
}

} 
shootx = x + lengthdir_x(obj_player.LenX,image_angle) - lengthdir_y(obj_player.LenY+6, image_angle);
shooty = y + lengthdir_y(obj_player.LenX, image_angle) + lengthdir_x(obj_player.LenY+6, image_angle);

	
if(obj_player.sprite_index == spr_player_idle && !obj_player.shooting ){
	obj_head.sprite_index = spr_head_idle;
}
//obj_head.image_angle = point_direction(obj_head.x,obj_head.y,mouse_x, mouse_y);
//show_debug_message("obj_head.image_angle: "+ string(obj_head.image_angle));