\ image stuff
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
	LIBRARY SDL2_image.dll
[else]
	LIBRARY ./SDL2_image.so
[then]
2drop

$00000001 constant IMG_INIT_JPG
$00000002 constant IMG_INIT_PNG
$00000004 constant IMG_INIT_TIF
$00000008 constant IMG_INIT_WEBP

FUNCTION: IMG_Linked_Version ( -- addr )
FUNCTION: IMG_Init ( flags -- flag )
FUNCTION: IMG_Quit ( -- )
FUNCTION: IMG_LoadTyped_RW ( rwops free z -- surface )
FUNCTION: IMG_Load ( z -- surface )
FUNCTION: IMG_Load_RW ( rwops free -- surface )
FUNCTION: IMG_LoadTexture ( renderer z -- texture )
FUNCTION: IMG_LoadTexture_RW ( renderer rwops free -- texture )
FUNCTION: IMG_LoadTextureTyped_RW ( renderer rwops free z -- texture )
FUNCTION: IMG_isICO ( rwops -- flag )
FUNCTION: IMG_isCUR ( rwops -- flag )
FUNCTION: IMG_isBMP ( rwops -- flag )
FUNCTION: IMG_isGIF ( rwops -- flag )
FUNCTION: IMG_isJPG ( rwops -- flag )
FUNCTION: IMG_isLBM ( rwops -- flag )
FUNCTION: IMG_isPCX ( rwops -- flag )
FUNCTION: IMG_isPNG ( rwops -- flag )
FUNCTION: IMG_isPNM ( rwops -- flag )
FUNCTION: IMG_isTIF ( rwops -- flag )
FUNCTION: IMG_isXCF ( rwops -- flag )
FUNCTION: IMG_isXPM ( rwops -- flag )
FUNCTION: IMG_isXV ( rwops -- flag )
FUNCTION: IMG_isWEBP ( rwops -- flag )
FUNCTION: IMG_LoadICO_RW ( rwops -- surface )
FUNCTION: IMG_LoadCUR_RW ( rwops -- surface )
FUNCTION: IMG_LoadBMP_RW ( rwops -- surface )
FUNCTION: IMG_LoadGIF_RW ( rwops -- surface )
FUNCTION: IMG_LoadJPG_RW ( rwops -- surface )
FUNCTION: IMG_LoadLBM_RW ( rwops -- surface )
FUNCTION: IMG_LoadPCX_RW ( rwops -- surface )
FUNCTION: IMG_LoadPNG_RW ( rwops -- surface )
FUNCTION: IMG_LoadPNM_RW ( rwops -- surface )
FUNCTION: IMG_LoadTGA_RW ( rwops -- surface )
FUNCTION: IMG_LoadTIF_RW ( rwops -- surface )
FUNCTION: IMG_LoadXCF_RW ( rwops -- surface )
FUNCTION: IMG_LoadXPM_RW ( rwops -- surface )
FUNCTION: IMG_LoadXV_RW ( rwops -- surface )
FUNCTION: IMG_LoadWEBP_RW ( rwops -- surface )
FUNCTION: IMG_ReadXPMFromArray ( xpm* -- surface )
FUNCTION: IMG_SavePNG ( surface z -- flag )
FUNCTION: IMG_SavePNG_RW ( surface rwops free -- flag )

: IMG_SetError SDL_SetError ;
: IMG_GetError SDL_GetError ;

