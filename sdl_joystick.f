\ joystick stuff
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


$00 constant SDL_HAT_CENTERED
$01 constant SDL_HAT_UP
$02 constant SDL_HAT_RIGHT
$04 constant SDL_HAT_DOWN
$08 constant SDL_HAT_LEFT
SDL_HAT_RIGHT SDL_HAT_UP or constant SDL_HAT_RIGHTUP     
SDL_HAT_RIGHT SDL_HAT_DOWN or constant SDL_HAT_RIGHTDOWN   
SDL_HAT_LEFT SDL_HAT_UP or constant SDL_HAT_LEFTUP      
SDL_HAT_LEFT SDL_HAT_DOWN or constant SDL_HAT_LEFTDOWN    

FUNCTION: SDL_NumJoysticks ( -- n )
FUNCTION: SDL_JoystickNameForIndex ( n -- z )
FUNCTION: SDL_JoystickOpen ( n -- joy )
FUNCTION: SDL_JoystickName ( joy -- z )
FUNCTION: SLD_JoystickGetDeviceGUID ( n -- guid )
FUNCTION: SDL_JoystickGetGUID ( joy -- guid )
FUNCTION: SDL_JoystickGetGUIDString ( guid z n -- ) \ z should be 33 bytes long 
FUNCTION: SDL_JoystickGetGUIDFromString ( z -- guid )
FUNCTION: SDL_JoystickGetAttached ( joy -- flag )
FUNCTION: SDL_JoystickInstanceID ( joy -- id )
FUNCTION: SDL_JoystickNumAxes ( joy -- n )
FUNCTION: SDL_JoystickNumBalls ( joy -- n )
FUNCTION: SDL_JoystickNumHats ( joy -- n )
FUNCTION: SDL_JoystickNumButtons ( joy -- n )
FUNCTION: SDL_JoystickUpdate ( -- )
FUNCTION: SDL_JoystickEventState ( n -- n )
FUNCTION: SDL_JoystickGetAxis ( joy n -- h )
FUNCTION: SDL_JoystickGetHat ( joy n -- n )
FUNCTION: SDL_JoystickGetBall ( joy n x* y* -- flag )
FUNCTION: SDL_JoystickGetButton ( joy n  -- n )
FUNCTION: SDL_JoystickClose ( joy -- )
