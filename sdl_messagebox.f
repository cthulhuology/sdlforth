\ messagebox
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

$00000010 constant SDL_MESSAGEBOX_ERROR
$00000020 constant SDL_MESSAGEBOX_WARNING
$00000040 constant SDL_MESSAGEBOX_INFORMATION

$00000001 constant SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT
$00000002 constant SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT

0
enum SDL_MESSAGEBOX_COLOR_BACKGROUND
enum SDL_MESSAGEBOX_COLOR_TEXT
enum SDL_MESSAGEBOX_COLOR_BUTTON_BORDER
enum SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND
enum SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED
enum SDL_MESSAGEBOX_COLOR_MAX
drop

: SDL_MessageBoxButtonData create 3 cells allot ;
: SDL_MessageBoxButtonData:flags ;
: SDL_MessageBoxButtonData:buttonid 1 cells + ;
: SDL_MessageBoxButtonData:text 2 cells + ;

: SDL_MessageBoxColor 1 cells allot ;
: SDL_MessageBoxColor:r ;		\ Uint8
: SDL_MessageBoxColor:g 1+ ;		\ Uint8
: SDL_MessageBoxColor:b 2+ ;		\ Uint8

: SDL_MessageBoxColorScheme create SDL_MESSAGEBOX_COLOR_MAX cells allot ;

: SDL_MessageBoxData create 7 cells allot ;

: SDL_MessageBoxData:flags ;
: SDL_MessageBoxData:window 1 cells + ;
: SDL_MessageBoxData:title 2 cells + ;
: SDL_MessageBoxData:message 3 cells + ;
: SDL_MessageBoxData:numbuttons 4 cells + ;
: SDL_MessageBoxData:buttons 5 cells + ;
: SDL_MessageBoxData:colorScheme 6 cells + ;

FUNCTION: SDL_ShowMessageBox ( msgbox n* -- flag )
FUNCTION: SDL_ShowSimpleMessageBox ( flags z z win -- flag )
