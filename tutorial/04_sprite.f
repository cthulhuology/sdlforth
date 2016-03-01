requires sdl
requires utilities/fill

sdl_init_everything sdl_init
z" sprite bmp" 0 0 640 480 window:create

z" tutorial/sprite.bmp" sdl_loadbmp value bmp
bmp 0= [if] ." Failed to load bmp" cr bye [then]

10 10 20 20 rect!

window:update
0 to color

: animate
	10
	40 0 do
		10 + dup dup at	
		bmp 0 surface rect sdl_blitsurface drop
		window:update
		1000 30 / sdl_delay
		rect:fill
	loop	
;

animate

window:destroy
sdl_quit
bye


