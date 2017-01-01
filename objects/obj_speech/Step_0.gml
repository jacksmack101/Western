if obj_player.keyUp && done
    {
    selected+=-1 
    }
if obj_player.keyDown && done
    {
    selected+=1
    }
selected=clamp(selected,0,max(dia_numanswers-1,0))//Make sure you can't select an answer that doesn't exist


if (keyboard_check_pressed(vk_space))//Select an answer, but only if skill checks are met!
{
if( cutoff > 5){
skipped = true;
}
if(done){
if (dialog_skillcheck(dia_req1[selected]) && dialog_skillcheck(dia_req2[selected]) && dialog_skillcheck(dia_req3[selected]))
    {
    dialog_trigger(dia_trigger1[selected])//Make any triggers happen!
    dialog_trigger(dia_trigger2[selected])//Use this code to alter variables based on which
    dialog_trigger(dia_trigger3[selected])//Answer the player chose.
    
    dialog_load(file,section,dia_dest[selected])//Load the destination section
    selected=0//reset cursor
	skipped = false;
	timer = 0;
	cutoff = 0;
	done = false;
    }
	}
}




