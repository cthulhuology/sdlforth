\ system stuff
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

s" windir" find-env [if]
	FUNCTION: SDL_Direct3D9GetAdapterIndex ( display -- index )
	FUNCTION: SDL_RenderGetD3D9Device ( renderer -- device )
	FUNCTION: SDL_DXGIGetOutputInfo ( n adapter* output* -- )
[then]
2drop

s" ios" find-env [if]
	FUNCTION: SDL_iPhoneSetAnimationCallback ( win interval cb param -- flag )
	FUNCTION: SDL_iPhoneSetEventPump ( flag -- )
[then] 
2drop

s" android" find-env [if]
	$01 constant SDL_ANDROID_EXTERNAL_STORAGE_READ
	$02 constant SDL_ANDROID_EXTERNAL_STORAGE_WRITE
	FUNCTION: SDL_AndroidGetJNIEnv ( -- jnienv* )
	FUNCTION: SDL_AndroidGetActivity ( -- activity )
	FUNCTION: SDL_AndroidGetInternalStoragePath ( -- z )
	FUNCTION: SDL_AndroidGetExternalStorageState ( -- flag )
	FUNCTION: SDL_AndroidGetExternalStoragePath ( -- z )
[then]
2drop
