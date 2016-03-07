\ shaped window stuff
\
\ Copyright (C) 2016 David J Goehrig <dave@dloh.org>
\ 
\  This software is provided 'as-is', without any express or implied
\  warranty.  In no event will the authors be held liable for any damages
\  arising from the use of this software.
\
\  Permission is granted to anyone to use this software for any purpose
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

-1 constant SDL_NONSHAPEABLE_WINDOW
-2 constant SDL_INVALID_SHAPE_ARGUMENT
-3 constant SDL_WINDOW_LACKS_SHAPE

0
enum ShapeModeDefault
enum ShapeModeBinarizeAlpha
enum ShapeModeReverseBinarizeAlpha
enum ShapeModeColorKey
drop

: SDL_WindowShapeMode create 2 cells allot ;
: SDL_WindowShapeMode:mode ;
: SDL_WindowShapeMode:parameters 1 cells + ;	\ binarizationCutoff == byte | color

FUNCTION: SDL_CreateShapedWindow ( z x y w h flags -- win )
FUNCTION: SDL_IsShapedWindow ( win -- flag )
FUNCTION: SDL_SetWindowShape ( win surface mode -- flag )
FUNCTION: SDL_GetShapedWindowMode ( win mode* -- flag )
