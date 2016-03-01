\ render stuff
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

$00000001 constant SDL_RENDERER_SOFTWARE
$00000002 constant SDL_RENDERER_ACCELERATED
$00000004 constant SDL_RENDERER_PRESENTVSYNC
$00000008 constant SDL_RENDERER_TARGETTEXTURE

0
enum SDL_TEXTUREACCESS_STATIC
enum SDL_TEXTUREACCESS_STREAMING
enum SDL_TEXTUREACCESS_TARGET
drop

0
enum SDL_TEXTUREMODULATE_NONE
enum SDL_TEXTUREMODULATE_COLOR
enum SDL_TEXTUREMODULATE_ALPHA
drop

0
enum SDL_FLIP_NONE
enum SDL_FLIP_HORIZONTAL
enum SDL_FLIP_VERTICAL
drop 

: SDL_RendererInfo create 21 cells allot ;
: SDL_RendererInfo:name ;
: SDL_RendererInfo:flags 1 cells + ;
: SDL_RendererInfo:num_texture_formats 2 cells + ;
: SDL_RendererInfo:texture_formats 3 cells + ;
: SDL_RendererInfo:max_texture_width 19 cells + ;
: SDL_RendererInfo:max_texture_height 20 cells + ;

FUNCTION: SDL_GetNumRenderDrivers ( -- n )
FUNCTION: SDL_GetRenderDriverInfo ( n info* -- flag )
FUNCTION: SDL_CreateWindowAndRenderer ( w h flags window* renderer* -- flag )
FUNCTION: SDL_CreateRenderer ( win n flags -- renderer )
FUNCTION: SDL_CreateSoftwareRenderer ( surface -- renderer )
FUNCTION: SDL_GetRenderer ( window -- renderer )
FUNCTION: SDL_GetRendererInfo ( renderer info -- flag )
FUNCTION: SDL_GetRendererOutputSize ( renderer w* h* -- flag )
FUNCTION: SDL_CreateTexture ( renderer format access w h -- texture )
FUNCTION: SDL_CreateTextureFromSurface ( renderer surface -- texture )
FUNCTION: SDL_QueryTexture ( texture format* access* w* h* -- flag )
FUNCTION: SDL_SetTextureColorMod ( texture r g b -- flag )
FUNCTION: SDL_GetTextureColorMod ( texture r* g* b* -- flag )
FUNCTION: SDL_SetTextureAlphaMod ( texture alpha -- flag )
FUNCTION: SDL_GetTextureAlphaMod ( texture alpha* -- flag )
FUNCTION: SDL_SetTextureBlendMode ( texture mode -- flag )
FUNCTION: SDL_GetTextureBlendMode ( texture mode* -- flag )
FUNCTION: SDL_UpdateTexture ( texture rect pixels pitch -- flag )
FUNCTION: SDL_UpdateYUVTexture ( texture rect Yplane* ypitch Uplane* upitch Vplane* vpitch -- flag ) 
FUNCTION: SDL_LockTexture ( texture rect pixels* pitch* -- int )
FUNCTION: SDL_UnlockTexture ( texture -- )
FUNCTION: SDL_RenderTargetSupported ( renderer -- flag )
FUNCTION: SDL_SetRenderTarget ( renderer texture -- flag )
FUNCTION: SDL_GetRenderTarget ( renderer -- texture )
FUNCTION: SDL_RenderSetLogicalSize ( renderer w h -- flag )
FUNCTION: SDL_RenderGetLogicalSize ( renderer w* h* -- )
FUNCTION: SDL_RenderSetViewport ( renderer rect -- flag )
FUNCTION: SDL_RenderGetViewport ( renderer rect -- )
FUNCTION: SDL_RenderSetClipRect ( renderer rect -- flag )
FUNCTION: SDL_RenderGetClipRect ( renderer rect -- )
FUNCTION: SDL_RenderSetScale ( renderer x y -- flag )
FUNCTION: SDL_RenderGetScale ( renderer x* y* -- )
FUNCTION: SDL_SetRenderDrawColor ( renderer r g b a -- flag )
FUNCTION: SDL_GetRenderDrawColor ( renderer r* g* b* a* -- flag )
FUNCTION: SDL_SetRenderDrawBlendMode ( renderer mode -- flag )
FUNCTION: SDL_GetRenderDrawBlendMode ( renderer mode* -- flag )
FUNCTION: SDL_RenderClear ( renderer -- flag )
FUNCTION: SDL_RenderDrawPoint ( renderer x y -- flag )
FUNCTION: SDL_RenderDrawPoints ( renderer points* n -- flag )
FUNCTION: SDL_RenderDrawLine ( renderer x1 y1 x2 y2 -- flag )
FUNCTION: SDL_RenderDrawLines ( renderer points* n -- flag )
FUNCTION: SDL_RenderDrawRect ( renderer rect -- flag )
FUNCTION: SDL_RenderDrawRects ( renderer rect* n -- flag )
FUNCTION: SDL_RenderFillRect ( render rect -- flag )
FUNCTION: SDL_RenderFillRects ( render rect* n -- flag )
FUNCTION: SDL_RenderCopy ( renderer texture src dst -- flag )
FUNCTION: SDL_RenderCopyEx ( renderer texture src dst angle point flip -- flag )
FUNCTION: SDL_RenderReadPixels ( renderer rect format pixels* pitch -- flag )
FUNCTION: SDL_RenderPresent ( renderer -- )
FUNCTION: SDL_DestroyTexture ( texture -- )
FUNCTION: SDL_DestroyRenderer ( renderer -- )
FUNCTION: SDL_GL_BindTexture ( texture wfloat hfloat -- flag )
FUNCTION: SDL_GL_UnbindTexture ( texture -- flag )
