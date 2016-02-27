\ log
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


4096 constant SDL_MAX_LOG_MESSAGE

0
enum SDL_LOG_CATEGORY_APPLICATION
enum SDL_LOG_CATEGORY_ERROR
enum SDL_LOG_CATEGORY_ASSERT
enum SDL_LOG_CATEGORY_SYSTEM
enum SDL_LOG_CATEGORY_AUDIO
enum SDL_LOG_CATEGORY_VIDEO
enum SDL_LOG_CATEGORY_RENDER
enum SDL_LOG_CATEGORY_INPUT
enum SDL_LOG_CATEGORY_TEST
enum SDL_LOG_CATEGORY_RESERVED1
enum SDL_LOG_CATEGORY_RESERVED2
enum SDL_LOG_CATEGORY_RESERVED3
enum SDL_LOG_CATEGORY_RESERVED4
enum SDL_LOG_CATEGORY_RESERVED5
enum SDL_LOG_CATEGORY_RESERVED6
enum SDL_LOG_CATEGORY_RESERVED7
enum SDL_LOG_CATEGORY_RESERVED8
enum SDL_LOG_CATEGORY_RESERVED9
enum SDL_LOG_CATEGORY_RESERVED10
enum SDL_LOG_CATEGORY_CUSTOM
drop

1
enum SDL_LOG_PRIORITY_VERBOSE
enum SDL_LOG_PRIORITY_DEBUG
enum SDL_LOG_PRIORITY_INFO
enum SDL_LOG_PRIORITY_WARN
enum SDL_LOG_PRIORITY_ERROR
enum SDL_LOG_PRIORITY_CRITICAL
enum SDL_NUM_LOG_PRIORITIES
drop

FUNCTION: SDL_LogSetAllPriority ( n -- )
FUNCTION: SDL_LogSetPriority ( n n -- )
FUNCTION: SDL_LogGetPriority ( n -- n )
FUNCTION: SDL_LogResetPriorities ( -- )
FUNCTION: SDL_Log ( z ... -- )
FUNCTION: SDL_LogVerbose ( z ... -- )
FUNCTION: SDL_LogDebug ( n z -- )
FUNCTION: SDL_LogInfo ( n z ... -- )
FUNCTION: SDL_LogWarn ( n z ... -- )
FUNCTION: SDL_LogError ( n z ... -- ) 
FUNCTION: SDL_LogCritical ( n z ... -- ) 
FUNCTION: SDL_LogMessage ( n n z ... -- )
FUNCTION: SDL_LogMessageV ( n n v addr -- )
FUNCTION: SDL_LogGetOutputFunction ( xt* data* -- )
FUNCTION: SDL_LogSetOutputFunction ( cb data -- )
