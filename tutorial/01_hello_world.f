

empty

requires sdl			\ requires SDL

640 constant SCREEN_WIDTH
480 constant SCREEN_HEIGHT

SDL_INIT_EVERYTHING SDL_Init		\ initialize video
\ [if] ." Failed to initialize video" cr bye [then]

\ Create a window, and bail on fail
z" SDL2 Hello World" 
0 0 SCREEN_WIDTH SCREEN_HEIGHT SDL_WINDOW_SHOWN 
SDL_CreateWindow value win
\ window 0= [if] ." Failed to create window" cr bye [then]

\ the window surface for drawing
win SDL_GetWindowSurface value sur

\ sur 0 $ff00ff  SDL_FillRect  .

sur sdl_surface:pixels @ 
sur sdl_surface:pitch @
$ff00ff
640 480 SDL_FillRect4

win SDL_UpdateWindowSurface	\ and draw the screen update

2000 SDL_Delay

win SDL_DestroyWindow
SDL_Quit
bye
