\ events

requires sdl
requires utilities/fill
requires utilities/events

sdl_init_everything sdl_init
z" event" 0 0 640 480 window:create

window:update

: main
	begin
	event:poll 0= if 0 else 
		event SDL_CommonEvent:type dup . cr
		sdl_quitevent =	\ until we get a quit event
	then until ;

main

window:destroy
sdl_quit


