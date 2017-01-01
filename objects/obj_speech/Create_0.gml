obj_player.state = wait_state;
obj_player.waitGoal = -1;
file="testDialog.ini"; //Default Dialog File
section="test"; //Default Dialog section
message=""; //Default message
dia_numanswers=0; //Number of answers
selected=0;
image_speed=0;
image_index=1;

n=0; 
repeat(10)
{
dia_answer[n]=""; //Answer text
dia_dest[n]=""; //What section to go to if the answer is picked
dia_req1[n]=""; //Answer skill checks
dia_req2[n]="";
dia_req3[n]="";
dia_trigger1[n]=""; //Answer event triggers, aka something happens when you choose this answer
dia_trigger2[n]="";
dia_trigger3[n]="";
n+=1;
}

alarm[0]=1;
draw_set_font(f_arial);

timer = 0;
cutoff = 0;
t = 0;
increment = 1;
done = false;
skipped = false;

