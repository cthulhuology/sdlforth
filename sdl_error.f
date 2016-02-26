\ error

0
enum SDL_ENOMEM
enum SDL_EFREAD
enum SDL_EFWRITE
enum SDL_EFSEEK
enum SDL_UNSUPPORTED
enum SDL_LASTERROR
drop

FUNCTION: SDL_SetError ( z ... -- n )
FUNCTION: SDL_GetError ( -- z )
FUNCTION: SDL_ClearError ( -- )
FUNCTION: SDL_Error ( n -- flag )

: SDL_OutOfMemoryError SDL_ENOMEM SDL_Error ;
: SDL_UnsupportedError SDL_UNSUPPORTED SDL_Error ;
: SDL_InvalidParamError z" Parameter '%s' is invalid" swap SDL_SetError ;
