

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

SDL_Rect rect
0 rect SDL_Rect:x !
0 rect SDL_Rect:y !
640 rect SDL_Rect:w !
480 rect SDL_Rect:h !

sur SDL_Surface:format @ $ff $ff $ff SDL_MapRGB value color

sur rect color SDL_FillRect  .
win SDL_UpdateWindowSurface	\ and draw the screen update

2000 SDL_Delay

window SDL_DestroyWindow
SDL_Quit
bye
