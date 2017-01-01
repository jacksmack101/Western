/// @description Variables
target_x = xstart;
target_y = ystart;

keyRight = false;
keyLeft = false;
keyUp = false;
keyDown = false;
keySpace = false;

state = move_state;

moveSpeed = 3;
walkSpeed = 3;
runsSpeed = 5;
busy = false;

animUpdate = false;
walking = false;
running = false;
stop_walking = false;
talking = false;
waitGoal = 0;
waitTime = 0;

LenX = 36;// arm offsets
LenY = -8;
shootx = 0;
shooty = 0;
shooting = true;
// ladder vars
climbSpeed = 4; 
climbing = false;
climbTarget = [x,y]
stairs = false;
stairTarget = [x,y];

var_sprite_width = sprite_get_width(spr_player_idle);
var_sprite_height = sprite_get_height(spr_player_idle);


str=1
spd=1


