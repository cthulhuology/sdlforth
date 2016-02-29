\ haptic stuff
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

1 constant SDL_HAPTIC_CONSTANT
2 constant SDL_HAPTIC_SINE
4 constant SDL_HAPTIC_LEFTRIGHT
4 constant SDL_HAPTIC_SQUARE
8 constant SDL_HAPTIC_TRIANGLE
16 constant SDL_HAPTIC_SAWTOOTHUP
32 constant SDL_HAPTIC_SAWTOOTHDOWN
64 constant SDL_HAPTIC_RAMP
128 constant SDL_HAPTIC_SPRING
256 constant SDL_HAPTIC_DAMPER
512 constant SDL_HAPTIC_INERTIA
1024 constant SDL_HAPTIC_FRICTION
2048 constant SDL_HAPTIC_CUSTOM
4096 constant SDL_HAPTIC_GAIN
8192 constant SDL_HAPTIC_AUTOCENTER
16384 constant SDL_HAPTIC_STATUS
32768 constant SDL_HAPTIC_PAUSE
0 constant SDL_HAPTIC_POLAR
1 constant SDL_HAPTIC_CARTESIAN
2 constant SDL_HAPTIC_SPHERICAL
4294967295 constant SDL_HAPTIC_INFINITY   

: SDL_HapticDirection create 4 cells allot ;
: SDL_HapticDirection:type ;				\ byte
: SDL_HapticDirection:x 1 cells + ;
: SDL_HapticDirection:y 2 cells + ;
: SDL_HapticDirection:z 3 cells + ;

: SDL_HapticConstant create 10 cells allot ;
: SDL_HapticConstant:type  ; 				\ Uint16
: SDL_HapticConstant:direction 1 cells + ;
: SDL_HapticConstant:length 5 cells + ;
: SDL_HapticConstant:delay 6 cells + ; 			\ Uint16
: SDL_HapticConstant:interval 6 cells + 2+ ; 		\ Uint16
: SDL_HapticConstant:level 7 cells + ; 			\ Sint16
: SDL_HapticConstant:attack_length 7 cells + 2+ ; 	\ Uint16
: SDL_HapticConstant:attack_level 8 cells + ; 		\ Uint16
: SDL_HapticConstant:fade_length 8 cells + 2+ ; 	\ Uint16
: SDL_HapticConstant:fade_level 9 cells + ; 		\ Uint16

: SDL_HapticPeriodic create 12 cells allot ;
: SDL_HapticPeriodic:type ;
: SDL_HapticPeriodic:direction 1 cells + ;
: SDL_HapticPeriodic:length 5 cells + ;
: SDL_HapticPeriodic:delay 6 cells + ; 			\ Uint16
: SDL_HapticPeriodic:button 6 cells + 2+ ; 		\ Uint16
: SDL_HapticPeriodic:interval 7 cells + ; 		\ Uint16
: SDL_HapticPeriodic:period 7 cells + 2+ ; 		\ Uint16
: SDL_HapticPeriodic:magnitude 8 cells + ; 		\ Sint16
: SDL_HapticPeriodic:offset 8 cells + 2+ ; 		\ Sint16
: SDL_HapticPeriodic:phase 9 cells + ; 			\ Sint16
: SDL_HapticPeriodic:attack_length 9 cells + 2+ ;	\ Uint16
: SDL_HapticPeriodic:attack_level 10 cells + ; 		\ Uint16
: SDL_HapticPeriodic:fade_length 10 cells + 2+ ; 	\ Uint16
: SDL_HapticPeriodic:fade_level 11 cells + ; 		\ Uint16

: SDL_HapticCondition create 17 cells allot ; 
: SDL_HapticCondition:type ;
: SDL_HapticCondition:direction 1 cells + ;
: SDL_HapticCondition:length 5 cells + ;
: SDL_HapticCondition:delay 6 cells + ; 		\ Uint16
: SDL_HapticCondition:button 6 cells + 2+ ; 		\ Uint16
: SDL_HapticCondition:interval 7 cells + ; 		\ Uint16
: SDL_HapticCondition:right_sat 7 cells 2 + ; 		\ Uint16[3]
: SDL_HapticCondition:left_sat 9 cells + ; 		\ Uint16[3]
: SDL_HapticCondition:right_coeff 10 cells + 2+ ; 	\ Sint16[3]
: SDL_HapticCondition:left_coeff  12 cells + ; 		\ Sint16[3]
: SDL_HapticCondition:deadband 13 cells + 2+  ; 	\ Uint16[3]
: SDL_HapticCondition:center 15 cells + ;

: SDL_HapticRamp create 11 cells allot ;
: SDL_HapticRamp:type ;
: SDL_HapticRamp:direction 1 cells + ;
: SDL_HapticRamp:length 5 cells + ;
: SDL_HapticRamp:delay 6 cells + ;			\ Uint16
: SDL_HapticRamp:button 6 cells + 2+ ;			\ Uint16
: SDL_HapticRamp:interval 7 cells + ;   		\ Uint16
: SDL_HapticRamp:start 7 cells + 2+ ;			\ Sint16
: SDL_HapticRamp:end 8 cells + ;			\ Sint16
: SDL_HapticRamp:attack_length 8 cells + 2+ ;  		\ Uint16
: SDL_HapticRamp:attack_level 9 cells + ;   		\ Uint16
: SDL_HapticRamp:fade_length 9 cells + 2+ ;   		\ Uint16
: SDL_HapticRamp:fade_level 10 cells + ;   		\ Uint16

: SDL_HapticLeftRight create 3 cells allot ;
: SDL_HapticLeftRight:type ; \ Uint15
: SDL_HapticLeftRight:length 1 cells + ;
: SDL_HapticLeftRight:large_magnitude 2 cells + ;	\ Uint16
: SDL_HapticLeftRight:small_magnitude 2 cells + 2+ ;	\ Uint16

: SDL_HapticCustom ;
: SDL_HapticCustom:type ;
: SDL_HapticCustom:direction 1 cells + ;
: SDL_HapticCustom:length 2 cells + ;
: SDL_HapticCustom:delay 3 cells + ; \ Uint16
: SDL_HapticCustom:button 3 cells + 2+ ; \ Uint16
: SDL_HapticCustom:interval 4 cells + ; \ Uint16
: SDL_HapticCustom:channels 4 cells + 2+ ; \ Uint8
: SDL_HapticCustom:period ;
: SDL_HapticCustom:samples ;
: SDL_HapticCustom:data ;
: SDL_HapticCustom:attack_length ;
: SDL_HapticCustom:attack_level ;
: SDL_HapticCustom:fade_length ;
: SDL_HapticCustom:fade_level ;

FUNCTION: SDL_NumHaptics ( -- n )
FUNCTION: SDL_HapticName ( n -- z )
FUNCTION: SDL_HapticOpen ( n -- haptic )
FUNCTION: SDL_HapticOpened ( n -- flag )
FUNCTION: SDL_HapticIndex ( haptic -- n )
FUNCTION: SDL_MouseIsHaptic ( -- flag )
FUNCTION: SDL_HapticOpenFromMouse ( -- haptic )
FUNCTION: SDL_JoystickIsHaptic ( joy -- flag )
FUNCTION: SDL_HapticOpenFromJoystick ( joy -- haptic )
FUNCTION: SDL_HapticClose ( haptic -- )
FUNCTION: SDL_HapticNumEffects ( haptic -- n )
FUNCTION: SDL_HapticNumEffectsPlaying ( haptic -- n )
FUNCTION: SDL_HapticQuery ( haptic -- n )
FUNCTION: SDL_HapticNumAxes ( haptic -- n )
FUNCTION: SDL_HapticEffectSupported ( haptic effect -- n )
FUNCTION: SDL_HapticNewEffect ( haptic effect -- n )
FUNCTION: SDL_HapticUpdateEffect ( haptic n data -- flag )
FUNCTION: SDL_HapticRunEffect ( haptic n n -- flag )
FUNCTION: SDL_HapticStopEffect ( haptic n -- flag )
FUNCTION: SDL_HapticDestroyEffect ( haptic n -- )
FUNCTION: SDL_HapticGetEffectStatus ( haptic n -- n )
FUNCTION: SDL_HapticSetGain ( haptic n -- flag )
FUNCTION: SDL_HapticSetAutocenter ( haptic flag  -- flag ) 
FUNCTION: SDL_HapticPause ( haptic -- flag )
FUNCTION: SDL_HapticUnpause ( haptic -- flag )
FUNCTION: SDL_HapticStopAll ( haptic -- flag )
FUNCTION: SDL_HapticRumbleSupported ( haptic -- n )
FUNCTION: SDL_HapticRumbleInit ( haptic -- flag )
FUNCTION: SDL_HapticRumblePlay ( haptic f n -- flag )
FUNCTION: SDL_HapticRumbleStop ( haptic -- flag )
