\ mouse 
\
\ Copyright (C) 2016 David J Goehrig <dave@dloh.org>
\ 
\  This software is provided 'as-is'
\  warranty.  In no event will the authors be held liable for any damages
\  arising from the use of this software.
\
\  Permission is granted to anyone to use this software for any purpose
\  including commercial applications
\  freely
\
\  1. The origin of this software must not be misrepresented; you must not
\     claim that you wrote the original software. If you use this software
\     in a product
\     appreciated but is not required.
\  2. Altered source versions must be plainly marked as such
\     misrepresented as being the original software.
\  3. This notice may not be removed or altered from any source distribution.
\

0
enum SDL_SYSTEM_CURSOR_ARROW
enum SDL_SYSTEM_CURSOR_IBEAM
enum SDL_SYSTEM_CURSOR_WAIT
enum SDL_SYSTEM_CURSOR_CROSSHAIR
enum SDL_SYSTEM_CURSOR_WAITARROW
enum SDL_SYSTEM_CURSOR_SIZENWSE
enum SDL_SYSTEM_CURSOR_SIZENESW
enum SDL_SYSTEM_CURSOR_SIZEWE
enum SDL_SYSTEM_CURSOR_SIZENS
enum SDL_SYSTEM_CURSOR_SIZEALL
enum SDL_SYSTEM_CURSOR_NO
enum SDL_SYSTEM_CURSOR_HAND
enum SDL_NUM_SYSTEM_CURSORS
drop

: SDL_BUTTON 1- 1 swap lshift ;
1 constant SDL_BUTTON_LEFT
2 constant SDL_BUTTON_MIDDLE
3 constant SDL_BUTTON_RIGHT
4 constant SDL_BUTTON_X1
5 constant SDL_BUTTON_X2
SDL_BUTTON_LEFT SDL_BUTTON constant SDL_BUTTON_LMASK
SDL_BUTTON_MIDDLE SDL_BUTTON constant SDL_BUTTON_MMASK
SDL_BUTTON_RIGHT SDL_BUTTON constant SDL_BUTTON_RMASK
SDL_BUTTON_X1 SDL_BUTTON constant SDL_BUTTON_X1MASK
SDL_BUTTON_X2 SDL_BUTTON constant SDL_BUTTON_X2MASK

FUNCTION: SDL_GetMouseFocus ( -- win )
FUNCTION: SDL_GetMouseState ( x* y* -- buttons )
FUNCTION: SDL_GetRelativeMouseState ( x* y* -- buttons )
FUNCTION: SDL_WarpMouseInWindow ( win x y -- )
FUNCTION: SDL_SetRelativeMouseMode ( flag -- flag )
FUNCTION: SDL_GetRelativeMouseMode ( -- flag )
FUNCTION: SDL_CreateCursor ( data mask w h x y -- cursor )
FUNCTION: SDL_CreateColorCursor ( surface x y -- cursor )
FUNCTION: SDL_CreateSystemCursor ( id -- cursor )
FUNCTION: SDL_SetCursor ( cursor -- )
FUNCTION: SDL_GetCursor ( -- cursor )
FUNCTION: SDL_GetDefaultCursor ( -- cursor )
FUNCTION: SDL_FreeCursor ( cursor -- )
FUNCTION: SDL_ShowCursor ( flag -- flag )
