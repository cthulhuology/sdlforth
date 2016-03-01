requires sdl
requires utilities/fill
requires utilities/events

sdl_init_everything sdl_init
z" scaled animation" 0 0 160 160 window:create

z" tutorial/animation.bmp" sdl_loadbmp value bmp
bmp 0= [if] ." Failed to load bmp" cr bye [then]

\ this rect finds the frame
0 0 40 40 rect!

\ black the screen
0 to color
surface:fill
window:update

: wink
	10 0 do	 \ 10 frames of animation
		I 40 * 0 at	\ i is the frame counter
		bmp rect surface 0 sdl_blitscaled drop
		window:update
		1000 30 / sdl_delay	\ 30 fps
	loop ;	

: wait
	1000 0 do	\ poll events for 1 second
		event:poll 0= not if
			event SDL_CommonEvent:type sdl_quitevent = if
				window:destroy
				sdl_quit
				bye
			then
		then
		sdl_delay 1	\ micro sleep
	loop ;

: animate
	begin
		wink
		wait
	again ;

animate
