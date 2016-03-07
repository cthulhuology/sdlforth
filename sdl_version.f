\ version stuff
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

: SDL_Version create 1 cells allot ;
: SDL_Version:major ;		\ byte
: SDL_Version:minor 1+ ;	\ byte
: SDL_Version:patch 2+ ;	\ byte

: SDL_VERSIONNUM ( x y z -- n ) swap 100 * + swap 1000 * + ;

FUNCTION: SDL_GetVersion ( version* -- )
FUNCTION: SDL_GetRevision ( -- z )
FUNCTION: SDL_GetRevisionNumber ( -- n )
