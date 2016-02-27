\ hints
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

z" SDL_FRAMEBUFFER_ACCELERATION" constant SDL_HINT_FRAMEBUFFER_ACCELERATION
z" SDL_RENDER_DRIVER" constant SDL_HINT_RENDER_DRIVER
z" SDL_RENDER_OPENGL_SHADERS" constant SDL_HINT_RENDER_OPENGL_SHADERS      
z" SDL_RENDER_DIRECT3D_THREADSAFE" constant SDL_HINT_RENDER_DIRECT3D_THREADSAFE 
z" SDL_RENDER_SCALE_QUALITY" constant SDL_HINT_RENDER_SCALE_QUALITY       
z" SDL_RENDER_VSYNC" constant SDL_HINT_RENDER_VSYNC               
z" SDL_VIDEO_ALLOW_SCREENSAVER" constant SDL_HINT_VIDEO_ALLOW_SCREENSAVER    
z" SDL_VIDEO_X11_XVIDMODE" constant SDL_HINT_VIDEO_X11_XVIDMODE         
z" SDL_VIDEO_X11_XINERAMA" constant SDL_HINT_VIDEO_X11_XINERAMA         
z" SDL_VIDEO_X11_XRANDR" constant SDL_HINT_VIDEO_X11_XRANDR           
z" SDL_GRAB_KEYBOARD" constant SDL_HINT_GRAB_KEYBOARD              
z" SDL_MOUSE_RELATIVE_MODE_WARP" constant SDL_HINT_MOUSE_RELATIVE_MODE_WARP    
z" SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS" constant SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS   
z" SDL_IOS_IDLE_TIMER_DISABLED" constant SDL_HINT_IDLE_TIMER_DISABLED 
z" SDL_IOS_ORIENTATIONS" constant SDL_HINT_ORIENTATIONS 
z" SDL_ACCELEROMETER_AS_JOYSTICK" constant SDL_HINT_ACCELEROMETER_AS_JOYSTICK 
z" SDL_XINPUT_ENABLED" constant SDL_HINT_XINPUT_ENABLED 
z" SDL_GAMECONTROLLERCONFIG" constant SDL_HINT_GAMECONTROLLERCONFIG 
z" SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS" constant SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS 
z" SDL_ALLOW_TOPMOST" constant SDL_HINT_ALLOW_TOPMOST 
z" SDL_TIMER_RESOLUTION" constant SDL_HINT_TIMER_RESOLUTION 
z" SDL_VIDEO_HIGHDPI_DISABLED" constant SDL_HINT_VIDEO_HIGHDPI_DISABLED 
z" SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK" constant SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK 
z" SDL_VIDEO_WIN_D3DCOMPILER" constant SDL_HINT_VIDEO_WIN_D3DCOMPILER              
z" SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT" constant SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT    
z" SDL_VIDEO_MAC_FULLSCREEN_SPACES" constant SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES    

0
enum  SDL_HINT_DEFAULT
enum SDL_HINT_NORMAL
enum SDL_HINT_OVERRIDE
drop

FUNCTION: SDL_SetHintWithPriority ( z z n -- flag )
FUNCTION: SDL_GetHint ( z -- z )
FUNCTION: SDL_AddHintCallback ( z xt data -- )
FUNCTION: SDL_DelHintCallback ( z xt data -- )
FUNCTION: SDL_ClearHints ( -- )
