requires sdl

sdl_window window
sdl_surface surface
sdl_surface bmp

: init
	sdl_init_everything sdl_init
	if ." Failed to initialize video" cr then
	z" Hello BMP" 100 100 640 480 sdl_window_shown
	sdl_createwindow to window
	window 0= if ." Failed to create window" cr then 
	window sdl_getwindowsurface to surface 
	surface 0= if ." Failed to get window surface" cr then ;

: load_bmp
	z" tutorial/hello.bmp" sdl_loadbmp to bmp
	bmp 0= if ." Failed to load bmp" cr then ;

: blit
	bmp 0 surface 0 sdl_blitsurface drop
	window sdl_updatewindowsurface ;

: go 
	init load_bmp
	blit
	2000 sdl_delay sdl_quit ;
 
go
