\ events
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

0 constant SDL_RELEASED
1 constant SDL_PRESSED

0 constant SDL_FIRSTEVENT

$100 
enum SDL_QUITEVENT
enum SDL_APP_TERMINATING
enum SDL_APP_LOWMEMORY
enum SDL_APP_WILLENTERBACKGROUND
enum SDL_APP_DIDENTERBACKGROUND
enum SDL_APP_WILLENTERFOREGROUND
enum SDL_APP_DIDENTERFOREGROUND
drop

$200
enum SDL_WINDOWEVENT    
enum SDL_SYSWMEVENT
drop

$300
enum SDL_KEYDOWN
enum SDL_KEYUP
enum SDL_TEXTEDITING
enum SDL_TEXTINPUT
drop

$400
enum SDL_MOUSEMOTION
enum SDL_MOUSEBUTTONDOWN
enum SDL_MOUSEBUTTONUP
enum SDL_MOUSEWHEEL
drop

$600
enum SDL_JOYAXISMOTION
enum SDL_JOYBALLMOTION
enum SDL_JOYHATMOTION
enum SDL_JOYBUTTONDOWN
enum SDL_JOYBUTTONUP
enum SDL_JOYDEVICEADDED
enum SDL_JOYDEVICEREMOVED
drop

$650
enum SDL_CONTROLLERAXISMOTION
enum SDL_CONTROLLERBUTTONDOWN
enum SDL_CONTROLLERBUTTONUP
enum SDL_CONTROLLERDEVICEADDED
enum SDL_CONTROLLERDEVICEREMOVED
enum SDL_CONTROLLERDEVICEREMAPPED
drop

$700
enum SDL_FINGERDOWN
enum SDL_FINGERUP
enum SDL_FINGERMOTION
drop

$800
enum SDL_DOLLARGESTURE
enum SDL_DOLLARRECORD
enum SDL_MULTIGESTURE
drop

$900 constant SDL_CLIPBOARDUPDATE

$1000 constant SDL_DROPFILE

$2000 constant SDL_RENDER_TARGETS_RESET

$8000 constant SDL_USEREVENT

$ffff constant SDL_LASTEVENT

32 constant SDL_TEXTEDITINGEVENT_TEXT_SIZE
32 constant SDL_TEXTINPUTEVENT_TEXT_SIZE

-1 constant SDL_QUERY
0 constant SDL_IGNORE
0 constant SDL_DISABLE
1 constant SDL_ENABLE

0
enum SDL_ADDEVENT,
enum SDL_PEEKEVENT,
enum SDL_GETEVENT
drop

FUNCTION: SDL_PumpEvents ( -- )
FUNCTION: SDL_PeepEvents ( events* n action min max -- n )
FUNCTION: SDL_HasEvent ( n -- flag )
FUNCTION: SDL_HasEvents ( min max -- flag )
FUNCTION: SDL_FlushEvent ( type -- )
FUNCTION: SDL_FlushEvents ( min max -- )
FUNCTION: SDL_PollEvent ( event -- n )
FUNCTION: SDL_WaitEvent ( event -- n )
FUNCTION: SDL_WaitEventTimeout ( event timeout -- n )
FUNCTION: SDL_PushEvent ( event -- flag )
FUNCTION: SDL_SetEventFilter ( xt data -- )
FUNCTION: SDL_GetEventFilter ( xt  data* -- flag )
FUNCTION: SDL_AddEventWatch ( xt data -- )
FUNCTION: SDL_DelEventWatch ( xt data -- )
FUNCTION: SDL_FilterEvents ( xt data -- )
FUNCTION: SDL_EventState ( type state -- n )
FUNCTION: SDL_RegisterEvents ( n -- n )

: SDL_GetEventState SDL_QUERY SDL_EventState ;

: SDL_CommonEvent:type @ ;
: SDL_CommonEvent:timestamp 1 cells + @ ;

: SDL_WindowEvent:type SDL_CommonEvent:type ;
: SDL_WindowEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_WindowEvent:windowID 2 cells + @ ;
: SDL_WindowEvent:event 3 cells + @ ;	\ 3 bytes of padding
: SDL_WindowEvent:data1 4 cells + @ ;
: SDL_WindowEvent:data2 5 cells + @ ;

: SDL_KeyboardEvent:type SDL_CommonEvent:type ;
: SDL_KeyboardEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_KeyboardEvent:windowID 2 cells + @ ;
: SDL_KeyboardEvent:state 3 cells + c@ ;
: SDL_KeyboardEvent:repeat 3 cells + 1+ c@ ;
: SDL_KeyboardEvent:keysym 4 cells + c@ ;

: SDL_TextEditingEvent:type SDL_CommonEvent:type ;
: SDL_TextEditingEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_TextEditingEvent:windowID 2 cells + @ ;
: SDL_TextEditingEvent:text 3 cells + ;		\ 32 bytes
: SDL_TextEditingEvent:start 11 cells + @ ;
: SDL_TextEditingEvent:length 12 cells + @ ;

: SDL_TextInputEvent:type SDL_CommonEvent:type ;
: SDL_TextInputEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_TextInputEvent:windowID 2 cells + @ ;
: SDL_TextInputEvent:text 3 cells + ;		\ 32 bytes

: SDL_MouseMotionEvent:type SDL_CommonEvent:type ;
: SDL_MouseMotionEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_MouseMotionEvent:windowID 2 cells + @ ;
: SDL_MouseMotionEvent:which 3 cells + @ ;
: SDL_MouseMotionEvent:state 4 cells + @ ;
: SDL_MouseMotionEvent:x 5 cells + @ ;
: SDL_MouseMotionEvent:y 6 cells + @ ;
: SDL_MouseMotionEvent:xrel 7 cells + @ ;
: SDL_MouseMotionEvent:yrel 8 cells + @ ;

: SDL_MouseButtonEvent:type SDL_CommonEvent:type ;
: SDL_MouseButtonEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_MouseButtonEvent:windowID 2 cells + @ ;
: SDL_MouseButtonEvent:which 3 cells + @ ;
: SDL_MouseButtonEvent:button 4 cells + c@ ;
: SDL_MouseButtonEvent:state 4 cells + 1+ c@ ;
: SDL_MouseButtonEvent:clicks 4 cells + 2+ c@ ;
: SDL_MouseButtonEvent:x  5 cells + @ ;
: SDL_MouseButtonEvent:y  5 cells + @ ;

: SDL_MouseWheelEvent:type SDL_CommonEvent:type ;
: SDL_MouseWheelEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_MouseWheelEvent:windowID 2 cells + @ ;
: SDL_MouseWheelEvent:which 3 cells + @ ;
: SDL_MouseWheelEvent:x 4 cells + @ ;
: SDL_MouseWheelEvent:y 5 cells + @ ;

: SDL_JoyAxisEvent:type SDL_CommonEvent:type ;
: SDL_JoyAxisEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_JoyAxisEvent:which 2 cells + @ ;
: SDL_JoyAxisEvent:axis 3 cells + c@ ;
: SDL_JoyAxisEvent:value 4 cells + h@ ;

: SDL_JoyBallEvent:type SDL_CommonEvent:type ;
: SDL_JoyBallEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_JoyBallEvent:which 2 cells + @ ;
: SDL_JoyBallEvent:ball 3 cells + c@ ;
: SDL_JoyBallEvent:xrel 4 cells + h@ ;
: SDL_JoyBallEvent:yrel 4 cells + 2+  h@ ;

: SDL_JoyHatEvent:type SDL_CommonEvent:type ;
: SDL_JoyHatEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_JoyHatEvent:which 2 cells + @ ;
: SDL_JoyHatEvent:hat 3 cells + c@ ;
: SDL_JoyHatEvent:value 3 cells + 1+ c@ ;

: SDL_JoyButtonEvent:type SDL_CommonEvent:type ;
: SDL_JoyButtonEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_JoyButtonEvent:which 2 cells + @ ;
: SDL_JoyButtonEvent:button 3 cells + c@ ;
: SDL_JoyButtonEvent:state 3 cells + 1+ c@ ;

: SDL_JoyDeviceEvent:type SDL_CommonEvent:type ;
: SDL_JoyDeviceEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_JoyDeviceEvent:which 2 cells + @ ;

: SDL_ControllerAxisEvent:type SDL_CommonEvent:type ;
: SDL_ControllerAxisEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_ControllerAxisEvent:which 2 cells + @ ;
: SDL_ControllerAxisEvent:axis 3 cells + c@ ;
: SDL_ControllerAxisEvent:value 4 cells + h@ ;

: SDL_ControllerButtonEvent:type SDL_CommonEvent:type ;
: SDL_ControllerButtonEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_ControllerButtonEvent:which 2 cells + @ ;
: SDL_ControllerButtonEvent:button 3 cells + c@ ;
: SDL_ControllerButtonEvent:state 3 cells + 1+ c@ ;

: SDL_ControllerDeviceEvent:type SDL_CommonEvent:type ;
: SDL_ControllerDeviceEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_ControllerDeviceEvent:which 2 cells + @ ;

: SDL_TouchFingerEvent:type SDL_CommonEvent:type ;
: SDL_TouchFingerEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_TouchFingerEvent:touchId 2 cells + @ ;
: SDL_TouchFingerEvent:fingerId 3 cells + @ ;
: SDL_TouchFingerEvent:x 4 cells + @ ;
: SDL_TouchFingerEvent:y 5 cells + @ ;
: SDL_TouchFingerEvent:dx 6 cells + @ ;
: SDL_TouchFingerEvent:dy 7 cells + @ ;
: SDL_TouchFingerEvent:pressure 8 cells + @ ;

: SDL_MultiGestureEvent:type SDL_CommonEvent:type ;
: SDL_MultiGestureEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_MultiGestureEvent:touchId 2 cells + @ ;
: SDL_MultiGestureEvent:dTheta 3 cells + @ ;
: SDL_MultiGestureEvent:dDist 4 cells + @ ;
: SDL_MultiGestureEvent:x 5 cells + @ ;
: SDL_MultiGestureEvent:y 6 cells + @ ;
: SDL_MultiGestureEvent:numFingers 7 cells + h@ ;
: SDL_MultiGestureEvent:padding 7 cells + 2+ h@ ;

: SDL_DollarGestureEvent:type SDL_CommonEvent:type ;
: SDL_DollarGestureEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_DollarGestureEvent:touchId 2 cells + @ ;
: SDL_DollarGestureEvent:gestureId 3 cells + @ ;
: SDL_DollarGestureEvent:numFingers 4 cells + @ ;
: SDL_DollarGestureEvent:error 5 cells + @ ;
: SDL_DollarGestureEvent:x 6 cells + @ ;
: SDL_DollarGestureEvent:y 7 cells + @ ;

: SDL_DropEvent:type SDL_CommonEvent:type ;
: SDL_DropEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_DropEvent:file 2 cells + @ ;

: SDL_QuitEvent:type SDL_CommonEvent:type ;
: SDL_QuitEvent:timestamp SDL_CommonEvent:timestamp ;

: SDL_OSEvent:type SDL_CommonEvent:type ;
: SDL_OSEvent:timestamp SDL_CommonEvent:timestamp ;

: SDL_UserEvent:type SDL_CommonEvent:type ;
: SDL_UserEvent:timestamp SDL_CommonEvent:timestamp ;
: SDL_UserEvent:windowID 2 cells + @ ;
: SDL_UserEvent:code 3 cells + @ ;
: SDL_UserEvent:data1 4 cells + @ ;
: SDL_UserEvent:data2 5 cells + @ ;

