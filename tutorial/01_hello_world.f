empty

requires sdl			\ requires SDL
requires utilities/fill		\ fill support for Linux

640 constant SCREEN_WIDTH
480 constant SCREEN_HEIGHT

SDL_INIT_EVERYTHING SDL_Init		\ initialize video
[if] ." Failed to initialize video" cr [then]

\ Create a window, and bail on fail
z" SDL2 Hello World" 
100 100 SCREEN_WIDTH SCREEN_HEIGHT window:create
window 0= [if] ." Failed to create window" cr [then]

$000000 to color
surface:fill window:update

$00ff00 to color
100 100 at 440 280 by 
rect:fill window:update

2000 SDL_Delay

window:destroy 

SDL_Quit
