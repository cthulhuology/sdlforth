\ keyboard stuff
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

: SDL_Keysym create 4 cells allot ;
: SDL_Keysym:scancode ;
: SDL_Keysym:sym 1 cells + ;
: SDL_Keysym:mod 2 cells + ;	\ 16 bits

FUNCTION: SDL_GetKeyboardFocus ( -- win )
FUNCTION: SDL_GetKeyboardState ( n* -- codes* )
FUNCTION: SDL_GetModState ( -- mod )
FUNCTION: SDL_SetModState ( mod -- )
FUNCTION: SDL_GetKeyFromScancode ( code -- keycode )
FUNCTION: SDL_GetScancodeFromKey ( key -- code )
FUNCTION: SDL_GetScancodeName ( code -- z )
FUNCTION: SDL_GetScancodeFromName ( z -- code )
FUNCTION: SDL_GetKeyName ( key -- z )
FUNCTION: SDL_GetKeyFromName ( z -- key )
FUNCTION: SDL_StartTextInput ( -- )
FUNCTION: SDL_IsTextInputActive ( -- flag )
FUNCTION: SDL_StopTextInput ( -- )
FUNCTION: SDL_SetTextInputRect (  rect -- )
FUNCTION: SDL_HasScreenKeyboardSupport ( -- flag )
FUNCTION: SDL_IsScreenKeyboardShown ( win -- flag )
