///wait_state()

if(waitGoal != -1){
	if(waitTime >= waitGoal){
		state = move_state;
		waitTime = 0;
		waitGoal=0;
	}else{
		// run the timer
		
		waitTime++;
	}
}
if(talking){

}else{

	if(sprite_index != spr_player_idle){
		sprite_index = spr_player_idle;
	}
}
