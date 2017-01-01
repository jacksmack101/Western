if obj_player.waitGoal == -1 {exit}
if distance_to_object(obj_player)<16//This stuff just makes the speech bubbles animate and appear.
{if dsprite<5{dsprite+=1}}
else
{if dsprite>0{dsprite+=-1}}

depth=-y

if(obj_player.waitGoal == 0){
	if keyboard_check_pressed(vk_space)&& distance_to_object(obj_player)<16
	{//Start speech if space is pressed near me
	a= instance_create_depth(0,0,-10000,obj_speech);
	a.section=section
	a.image_index=image_index
	}
}


