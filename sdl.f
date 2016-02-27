\ sdl 
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


EMPTY

LIBRARY /usr/lib/i386-linux-gnu/libSDL2-2.0.so.0

requires sdl_main
requires sdl_std
requires sdl_rwops
requires sdl_surface
requires sdl_audio
requires sdl_clipboard
requires sdl_cpuinfo
requires sdl_error
requires sdl_events
requires sdl_filesystem
requires sdl_joystick
requires sdl_controller
requires sdl_haptic
requires sdl_hints
requires sdl_loadso
requires sdl_log
requires sdl_messagebox
requires sdl_mutex
requires sdl_power
requires sdl_render
requires sdl_system
requires sdl_timer
requires sdl_version
requires sdl_video

\ init stuff
$00000001 constant SDL_INIT_TIMER
$00000010 constant SDL_INIT_AUDIO
$00000020 constant SDL_INIT_VIDEO
$00000200 constant SDL_INIT_JOYSTICK       
$00001000 constant SDL_INIT_HAPTIC
$00002000 constant SDL_INIT_GAMECONTROLLER
$00004000 constant SDL_INIT_EVENTS
$00100000 constant SDL_INIT_NOPARACHUTE

SDL_INIT_TIMER SDL_INIT_AUDIO or SDL_INIT_VIDEO or SDL_INIT_EVENTS or
SDL_INIT_JOYSTICK or SDL_INIT_HAPTIC or SDL_INIT_GAMECONTROLLER or 
constant SDL_INIT_EVERYTHING

FUNCTION: SDL_Init ( options -- flag )
FUNCTION: SDL_InitSubSystem ( flags -- flag )
FUNCTION: SDL_QuitSubSystem ( flags -- )
FUNCTION: SDL_WasInit ( flags -- n )
FUNCTION: SDL_Quit ( -- )
