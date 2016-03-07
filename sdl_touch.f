\ touch stuff
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

: SDL_TouchID create 2 cells allot ;	\ sint64
: SDL_FingerID create 2 cells allot ;	\ sint64

: SDL_Finger create 5 cells allot ;
: SDL_Finger:id ;			\ sint64
: SDL_Finger:x 2 cells + ;		\ float
: SDL_Finger:y 3 cells + ;		\ float
: SDL_Finger:pressure 4 cells + ;	\ float

-1 constant SDL_TOUCH_MOUSEID

FUNCTION: SDL_GetNumTouchDevices ( -- n )
FUNCTION: SDL_GetTouchDevice ( n -- touch id )
FUNCTION: SDL_GetNumTouchFingers ( touchid -- n )
FUNCTION: SDL_GetTouchFinger ( touchid n -- finger )
