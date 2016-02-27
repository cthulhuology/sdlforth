\ rectangles

: SDL_Point create 2 cells allot ;
: SDL_Point:x ;
: SDL_Point:y 1 cells + ;

: SDL_Rect create 4 cells allot ;
: SDL_Rect:x ;
: SDL_Rect:y 1 cells + ;
: SDL_Rect:w 2 cells + ;
: SDL_Rect:h 3 cells + ;


