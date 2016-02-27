\ surface  
\
\ Copyright (C) 2016 David J Goehrig <dave@dloh.org>
\ 
\  This software is provided 'as-is', without any express or implied
\  warranty.  In no event will the authors be held liable for any damages
\  arising from the use of this software.
\
\  Permission is granted to anyone to use this software for any purpose,
\  including commercial applications, and to alter it and redistribute it
\  freely, subject to the following restrictions:
\
\  1. The origin of this software must not be misrepresented; you must not
\     claim that you wrote the original software. If you use this software
\     in a product, an acknowledgment in the product documentation would be
\     appreciated but is not required.
\  2. Altered source versions must be plainly marked as such, and must not be
\     misrepresented as being the original software.
\  3. This notice may not be removed or altered from any source distribution.
\

$00000000 constant SDL_SWSURFACE
$00000001 constant SDL_PREALLOC
$00000002 constant SDL_RLEACCEL
$00000004 constant SDL_DONTFREE

: SDL_Surface:flags ;
: SDL_Surface:format 1 cells + ;
: SDL_Surface:w 2 cells + ;
: SDL_Surface:h 3 cells + ;
: SDL_Surface:pitch 4 cells + ;
: SDL_Surface:pixels 5 cells + ;
: SDL_Surface:userdata 6 cells + ;
: SDL_Surface:locked 7 cells + ;
: SDL_Surface:lock_data 8 cells + ;
: SDL_Surface:clip_rect 9 cells + ;
: SDL_Surface:map ." SDL_Surface:map not implemented " ;
: SDL_Surface:refcount ." SDL_Surface:refcount not implemented " ;

: SDL_MUSTLOCK @ SDL_RLEACCEL and 0= ;

FUNCTION: SDL_CreateRGBSurface ( flags w h d r g b a -- surface )
FUNCTION: SDL_CreateRGBSurfaceFrom ( pixels w h d p r g b a -- surface )
FUNCTION: SDL_FreeSurface ( surface -- )
FUNCTION: SDL_SetSurfacePalette ( surface palette -- flag )
FUNCTION: SDL_LockSurface ( surface -- flag )
FUNCTION: SDL_UnlockSurface ( surface -- )
FUNCTION: SDL_LoadBMP_RW ( src n -- surface )

\ need to include rwops first!
: SDL_LoadBMP ( z -- surface ) z" rb" SDL_RWFromFile 1 SDL_LoadBMP_RW ;

FUNCTION: SDL_SaveBMP_RW ( surface dst n -- flag )

: SDL_SaveBMP ( surface z -- flag ) z" wb" SDL_RWFromFile 1 SDL_SaveBMP_RW ;

FUNCTION: SDL_SetSurfaceRLE ( surface flag -- flag )
FUNCTION: SDL_SetColorKey ( surface flag key -- flag )
FUNCTION: SDL_GetColorKey ( surface key* -- flag )
FUNCTION: SDL_SetSurfaceColorMod ( surface r g b -- flag )
FUNCTION: SDL_GetSurfaceColorMod ( surface r* g* b* -- flag )
FUNCTION: SDL_SetSurfaceAlphaMod ( surface a -- flag )
FUNCTION: SDL_GetSurfaceAlphaMod ( surface a* -- flag )
FUNCTION: SDL_SetSurfaceBlendMode ( surface mode -- flag )
FUNCTION: SDL_GetSurfaceBlendMode ( surface mode* -- flag )
FUNCTION: SDL_SetClipRect ( surface rect -- flag )
FUNCTION: SDL_GetClipRect ( surface rect* -- )
FUNCTION: SDL_ConvertSurface ( surface fmt flags -- surface )
FUNCTION: SDL_ConvertSurfaceFormat ( surface n flags -- surface )
FUNCTION: SDL_ConvertPixels ( w h fmt src* pitch fmt dst* pitch -- flag )
FUNCTION: SDL_FillRect ( surface addr color -- flag )
FUNCTION: SDL_FillRects ( surface rect* count color -- flag )
FUNCTION: SDL_UpperBlit ( src rect dst rect -- flag )

: SDL_BlitSurface SDL_UpperBlit ;

FUNCTION: SDL_LowerBlit ( src rect dst rect -- flag )
FUNCTION: SDL_SoftStretch ( src rect dst rect -- flag )
FUNCTION: SDL_UpperBlitScaled ( src rect dst rect -- flag )

: SDL_BlitScaled SDL_UpperBlitScaled ;

FUNCTION: SDL_LowerBlitScaled ( src rect dst rect -- flag )

