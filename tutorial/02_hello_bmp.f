
requires sdl
requires utilities/fill

sdl_init_everything sdl_init
z" hello bmp" 0 0 640 480 window:create

z" tutorial/hello.bmp" sdl_loadbmp value bmp
bmp 0= [if] ." Failed to load bmp" cr bye [then]

bmp 0 surface 0 sdl_blitsurface drop
window:update

2000 sdl_delay

window:destroy
sdl_quit
bye


