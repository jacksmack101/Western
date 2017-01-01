application_surface_draw_enable(false);
window_set_fullscreen(true);

#macro monitor_width display_get_width()
#macro monitor_height display_get_height()

#macro game_width 480
#macro game_height 270

#macro monitorOffsetX (monitor_width - game_width)/2
#macro monitorOffsetY (monitor_height - game_height)/2

surface_resize(application_surface,1920, 1080); 



