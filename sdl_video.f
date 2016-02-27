\ window stuff
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

$00000001 constant SDL_WINDOW_FULLSCREEN
$00000002 constant SDL_WINDOW_OPENGL
$00000004 constant SDL_WINDOW_SHOWN
$00000008 constant SDL_WINDOW_HIDDEN
$00000010 constant SDL_WINDOW_BORDERLESS
$00000020 constant SDL_WINDOW_RESIZABLE
$00000040 constant SDL_WINDOW_MINIMIZED
$00000080 constant SDL_WINDOW_MAXIMIZED
$00000100 constant SDL_WINDOW_INPUT_GRABBED
$00000200 constant SDL_WINDOW_INPUT_FOCUS
$00000400 constant SDL_WINDOW_MOUSE_FOCUS
SDL_WINDOW_FULLSCREEN $00001000 or constant SDL_WINDOW_FULLSCREEN_DESKTOP
$00000800 constant SDL_WINDOW_FOREIGN
$00002000 constant SDL_WINDOW_ALLOW_HIGHDPI

$1FFF0000 constant SDL_WINDOWPOS_UNDEFINED_MASK
: SDL_WINDOWPOS_UNDEFINED_DISPLAY ( n -- flag ) SDL_WINDOWPOS_UNDEFINED_MASK or ;
0 SDL_WINDOWPOS_UNDEFINED_DISPLAY constant SDL_WINDOWPOS_UNDEFINED 
: SDL_WINDOWPOS_ISUNDEFINED $FFFF0000 and SDL_WINDOWPOS_UNDEFINED_MASK = ;

$2FFF0000 constant SDL_WINDOWPOS_CENTERED_MASK 
: SDL_WINDOWPOS_CENTERED_DISPLAY SDL_WINDOWPOS_CENTERED_MASK or ;
0 SDL_WINDOWPOS_CENTERED_DISPLAY constant SDL_WINDOWPOS_CENTERED
: SDL_WINDOWPOS_ISCENTERED $FFFF0000 and SDL_WINDOWPOS_CENTERED_MASK = ;

0 
enum SDL_WINDOWEVENT_NONE
enum SDL_WINDOWEVENT_SHOWN
enum SDL_WINDOWEVENT_HIDDEN
enum SDL_WINDOWEVENT_EXPOSED
enum SDL_WINDOWEVENT_MOVED
enum SDL_WINDOWEVENT_RESIZED
enum SDL_WINDOWEVENT_SIZE_CHANGED
enum SDL_WINDOWEVENT_MINIMIZED
enum SDL_WINDOWEVENT_MAXIMIZED
enum SDL_WINDOWEVENT_RESTORED
enum SDL_WINDOWEVENT_ENTER
enum SDL_WINDOWEVENT_LEAVE
enum SDL_WINDOWEVENT_FOCUS_GAINED
enum SDL_WINDOWEVENT_FOCUS_LOST
enum SDL_WINDOWEVENT_CLOSE
drop


0
enum SDL_GL_RED_SIZE
enum SDL_GL_GREEN_SIZE
enum SDL_GL_BLUE_SIZE
enum SDL_GL_ALPHA_SIZE
enum SDL_GL_BUFFER_SIZE
enum SDL_GL_DOUBLEBUFFER
enum SDL_GL_DEPTH_SIZE
enum SDL_GL_STENCIL_SIZE
enum SDL_GL_ACCUM_RED_SIZE
enum SDL_GL_ACCUM_GREEN_SIZE
enum SDL_GL_ACCUM_BLUE_SIZE
enum SDL_GL_ACCUM_ALPHA_SIZE
enum SDL_GL_STEREO
enum SDL_GL_MULTISAMPLEBUFFERS
enum SDL_GL_MULTISAMPLESAMPLES
enum SDL_GL_ACCELERATED_VISUAL
enum SDL_GL_RETAINED_BACKING
enum SDL_GL_CONTEXT_MAJOR_VERSION
enum SDL_GL_CONTEXT_MINOR_VERSION
enum SDL_GL_CONTEXT_EGL
enum SDL_GL_CONTEXT_FLAGS
enum SDL_GL_CONTEXT_PROFILE_MASK
enum SDL_GL_SHARE_WITH_CURRENT_CONTEXT
enum SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
drop

$0001 constant SDL_GL_CONTEXT_PROFILE_CORE
$0002 constant SDL_GL_CONTEXT_PROFILE_COMPATIBILITY
$0004 constant SDL_GL_CONTEXT_PROFILE_ES
$0001 constant SDL_GL_CONTEXT_DEBUG_FLAG
$0002 constant SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG
$0004 constant SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG
$0008 constant SDL_GL_CONTEXT_RESET_ISOLATION_FLAG

: SDL_DisplayMode create 5 cells allot ;
: SDL_DisplayMode:format ;
: SDL_DisplayMode:w 1 cells +  ;
: SDL_DisplayMode:h 2 cells +  ;
: SDL_DisplayMode:refresh_rate 3 cells +  ;
: SDL_DisplayMode:driverdata 4 cells +  ;

FUNCTION: SDL_GetNumVideoDrivers ( -- n )
FUNCTION: SDL_GetVideoDriver ( n -- z )
FUNCTION: SDL_VideoInit ( z -- flag )
FUNCTION: SDL_VideoQuit ( -- ) 
FUNCTION: SDL_GetCurrentVideoDriver ( -- z )
FUNCTION: SDL_GetNumVideoDisplays ( -- n )
FUNCTION: SDL_GetDisplayName ( n -- z )
FUNCTION: SDL_GetDisplayBounds ( n rect* -- flag )
FUNCTION: SDL_GetNumDisplayModes ( n -- n )
FUNCTION: SDL_GetDisplayMode ( n n mode* -- flag )
FUNCTION: SDL_GetDesktopDisplayMode ( n mode* -- flag )
FUNCTION: SDL_GetCurrentDisplayMode ( n mode* -- flag )
FUNCTION: SDL_GetClosestDisplayMode ( n mode* closest* -- mode* )
FUNCTION: SDL_GetWindowDisplayIndex ( win -- n )
FUNCTION: SDL_SetWindowDisplayMode ( win mode* -- flag )
FUNCTION: SDL_GetWindowDisplayMode ( win mode* -- flag )
FUNCTION: SDL_GetWindowPixelFormat ( win -- n )
FUNCTION: SDL_CreateWindow ( titile x y w h flags -- win )
FUNCTION: SDL_CreateWindowFrom ( data -- win ) 
FUNCTION: SDL_GetWindowID ( win -- id )
FUNCTION: SDL_GetWindowFromID ( id -- win )
FUNCTION: SDL_GetWindowFlags ( win -- flags )
FUNCTION: SDL_SetWindowTitle ( win z -- )
FUNCTION: SDL_GetWindowTitle ( win -- z )
FUNCTION: SDL_SetWindowIcon ( win icon -- )
FUNCTION: SDL_SetWindowData ( win z data -- oldata )
FUNCTION: SDL_GetWindowData ( win z -- data )
FUNCTION: SDL_SetWindowPosition ( win x y -- )
FUNCTION: SDL_GetWindowPosition ( win x* y* -- ) 
FUNCTION: SDL_SetWindowSize ( win w h -- )
FUNCTION: SDL_GetWindowSize ( win w* h* -- )
FUNCTION: SDL_SetWindowMinimumSize ( win w h -- )
FUNCTION: SDL_GetWindowMinimumSize ( win w* h* -- )
FUNCTION: SDL_SetWindowMaximumSize ( win w h -- )
FUNCTION: SDL_GetWindowMaximumSize ( win w* h* -- )
FUNCTION: SDL_SetWindowBordered ( win flag -- )
FUNCTION: SDL_ShowWindow ( win -- )
FUNCTION: SDL_HideWindow ( win -- )
FUNCTION: SDL_RaiseWindow ( win -- )
FUNCTION: SDL_MaximizeWindow ( win -- )
FUNCTION: SDL_MinimizeWindow ( win -- )
FUNCTION: SDL_RestoreWindow ( win -- )
FUNCTION: SDL_SetWindowFullscreen ( win flags -- flag )
FUNCTION: SDL_GetWindowSurface ( win -- surface )
FUNCTION: SDL_UpdateWindowSurface ( win -- flag )
FUNCTION: SDL_UpdateWindowSurfaceRects ( win rects* n -- flag )
FUNCTION: SDL_SetWindowGrab ( win flag -- ) 
FUNCTION: SDL_GetWindowGrab ( win -- flag )
FUNCTION: SDL_SetWindowBrightness ( win float -- flag )
FUNCTION: SDL_GetWindowBrightness ( win -- float )
FUNCTION: SDL_SetWindowGammaRamp ( win r* g* b* -- flag ) \ 256 shorts for r,g,b
FUNCTION: SDL_GetWindowGammaRamp ( win r* g* b* -- flag )
FUNCTION: SDL_DestroyWindow ( win -- )
FUNCTION: SDL_IsScreenSaverEnabled ( -- flag )
FUNCTION: SDL_EnableScreenSaver ( -- )
FUNCTION: SDL_DisableScreenSaver ( -- )
FUNCTION: SDL_GL_LoadLibrary ( z -- flag )
FUNCTION: SDL_GL_GetProcAddress ( z -- proc* )
FUNCTION: SDL_GL_UnloadLibrary ( -- )
FUNCTION: SDL_GL_ExtensionSupported ( z -- flag )
FUNCTION: SDL_GL_ResetAttributes ( -- )
FUNCTION: SDL_GL_SetAttribute ( attr value -- flag )
FUNCTION: SDL_GL_GetAttribute ( attr value* -- flag )
FUNCTION: SDL_GL_CreateContext ( win -- ctx )
FUNCTION: SDL_GL_MakeCurrent ( win ctx -- flag )
FUNCTION: SDL_GL_GetCurrentWindow ( -- win )
FUNCTION: SDL_GL_GetCurrentContext ( -- ctx )
FUNCTION: SDL_GL_GetDrawableSize ( win h* w* -- )
FUNCTION: SDL_GL_SetSwapInterval ( n -- flag )
FUNCTION: SDL_GL_GetSwapInterval ( -- n )
FUNCTION: SDL_GL_SwapWindow ( win -- )
FUNCTION: SDL_GL_DeleteContext ( ctx -- )


