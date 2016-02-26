\ game controller stuff
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

0
enum SDL_CONTROLLER_BINDTYPE_NONE
enum SDL_CONTROLLER_BINDTYPE_BUTTON
enum SDL_CONTROLLER_BINDTYPE_AXIS
enum SDL_CONTROLLER_BINDTYPE_HAT
drop

-1
enum SDL_CONTROLLER_AXIS_INVALID
enum SDL_CONTROLLER_AXIS_LEFTX
enum SDL_CONTROLLER_AXIS_LEFTY
enum SDL_CONTROLLER_AXIS_RIGHTX
enum SDL_CONTROLLER_AXIS_RIGHTY
enum SDL_CONTROLLER_AXIS_TRIGGERLEFT
enum SDL_CONTROLLER_AXIS_TRIGGERRIGHT
enum SDL_CONTROLLER_AXIS_MAX
drop 

-1 
enum SDL_CONTROLLER_BUTTON_INVALID
enum SDL_CONTROLLER_BUTTON_A
enum SDL_CONTROLLER_BUTTON_B
enum SDL_CONTROLLER_BUTTON_X
enum SDL_CONTROLLER_BUTTON_Y
enum SDL_CONTROLLER_BUTTON_BACK
enum SDL_CONTROLLER_BUTTON_GUIDE
enum SDL_CONTROLLER_BUTTON_START
enum SDL_CONTROLLER_BUTTON_LEFTSTICK
enum SDL_CONTROLLER_BUTTON_RIGHTSTICK
enum SDL_CONTROLLER_BUTTON_LEFTSHOULDER
enum SDL_CONTROLLER_BUTTON_RIGHTSHOULDER
enum SDL_CONTROLLER_BUTTON_DPAD_UP
enum SDL_CONTROLLER_BUTTON_DPAD_DOWN
enum SDL_CONTROLLER_BUTTON_DPAD_LEFT,
enum SDL_CONTROLLER_BUTTON_DPAD_RIGHT
enum SDL_CONTROLLER_BUTTON_MAX
drop

: SDL_GameControllerButtonBind:type @ ;
: SDL_GameControllerButtonBind:button 1 cells + @ ;
: SDL_GameControllerButtonBind:axis 1 cells + @ ;
: SDL_GameControllerButtonBind:hat 1 cells + @ ;
: SDL_GameControllerButtonBind:hat_mask 2 cells + @ ;

FUNCTION: SDL_GameControllerAddMappingsFromRW ( rwop flag -- flag )
FUNCTION: SDL_GameControllerAddMapping ( z -- flag )
FUNCTION: SDL_GameControllerMappingForGUID ( guid -- z )
FUNCTION: SDL_GameControllerMapping ( controller -- z )
FUNCTION: SDL_IsGameController ( controller -- flag )
FUNCTION: SDL_GameControllerNameForIndex ( n -- z )
FUNCTION: SDL_GameControllerOpen ( n -- controller )
FUNCTION: SDL_GameControllerName ( controller -- z )
FUNCTION: SDL_GameControllerGetAttached ( controller -- flag )
FUNCTION: SDL_GameControllerGetJoystick ( controller -- joy )
FUNCTION: SDL_GameControllerEventState ( n -- n )
FUNCTION: SDL_GameControllerUpdate ( -- ) 
FUNCTION: SDL_GameControllerGetAxisFromString ( z -- axis )
FUNCTION: SDL_GameControllerGetStringForAxis ( axis -- z )
FUNCTION: SDL_GameControllerGetBindForAxis  ( controller axis -- bind )
FUNCTION: SDL_GameControllerGetAxis ( controller axis -- h )
FUNCTION: SDL_GameControllerGetButtonFromString ( z -- button )
FUNCTION: SDL_GameControllerGetStringForButton ( button -- z )
FUNCTION: SDL_GameControllerGetBindForButton ( controller button -- bind )
FUNCTION: SDL_GameControllerGetButton ( controller button -- n )
FUNCTION: SDL_GameControllerClose ( controller -- )

: SDL_GameControllerAddMappingsFromFile ( z -- flag )
 	z" rb " SDL_RWFromFile 1 SDL_GameControllerAddMappingsFromRW ;
