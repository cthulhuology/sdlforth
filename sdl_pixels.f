\ pixels stuff
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

255 constant SDL_ALPHA_OPAQUE
0 constant SDL_ALPHA_TRANSPARENT

0
enum SDL_PIXELTYPE_UNKNOWN
enum SDL_PIXELTYPE_INDEX1
enum SDL_PIXELTYPE_INDEX4
enum SDL_PIXELTYPE_INDEX8
enum SDL_PIXELTYPE_PACKED8
enum SDL_PIXELTYPE_PACKED16
enum SDL_PIXELTYPE_PACKED32
enum SDL_PIXELTYPE_ARRAYU8
enum SDL_PIXELTYPE_ARRAYU16
enum SDL_PIXELTYPE_ARRAYU32
enum SDL_PIXELTYPE_ARRAYF16
enum SDL_PIXELTYPE_ARRAYF32
drop

0
enum SDL_BITMAPORDER_NONE
enum SDL_BITMAPORDER_4321
enum SDL_BITMAPORDER_1234
drop

0
enum SDL_PACKEDORDER_NONE
enum SDL_PACKEDORDER_XRGB
enum SDL_PACKEDORDER_RGBX
enum SDL_PACKEDORDER_ARGB
enum SDL_PACKEDORDER_RGBA
enum SDL_PACKEDORDER_XBGR
enum SDL_PACKEDORDER_BGRX
enum SDL_PACKEDORDER_ABGR
enum SDL_PACKEDORDER_BGRA
drop

0
enum SDL_ARRAYORDER_NONE
enum SDL_ARRAYORDER_RGB
enum SDL_ARRAYORDER_RGBA
enum SDL_ARRAYORDER_ARGB
enum SDL_ARRAYORDER_BGR
enum SDL_ARRAYORDER_BGRA
enum SDL_ARRAYORDER_ABGR
drop

0
enum SDL_PACKEDLAYOUT_NONE
enum SDL_PACKEDLAYOUT_332
enum SDL_PACKEDLAYOUT_4444
enum SDL_PACKEDLAYOUT_1555
enum SDL_PACKEDLAYOUT_5551
enum SDL_PACKEDLAYOUT_565
enum SDL_PACKEDLAYOUT_8888
enum SDL_PACKEDLAYOUT_2101010
enum SDL_PACKEDLAYOUT_1010102
drop

: SDL_DEFINE_PIXELFOURCC ( r g b a -- n ) SDL_FOURCC ;
: SDL_DEFINE_PIXELFORMAT ( type order layout bits bytes -- n )
	268435456 or swap 8 lshift or swap 16 lshift or swap 20 lshift or
	swap 24 lshift or ;

: SDL_PIXELFLAG ( format -- n ) 28 rshift $0f and ;
: SDL_PIXELTYPE ( format -- n ) 24 rshift $0f and ;
: SDL_PIXELORDER ( format -- n ) 20 rshift $0f and ;
: SDL_PIXELLAYOUT ( format -- n ) 16 rshift $0f and ;
: SDL_BITSPERPIXEL ( format -- n ) 8 rshift $ff and ;

0 constant SDL_PIXELFORMAT_UNKNOWN

SDL_PIXELTYPE_INDEX1 SDL_BITMAPORDER_4321 0 1 0 
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_INDEX1LSB

SDL_PIXELTYPE_INDEX1 SDL_BITMAPORDER_1234 0 1 0
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_INDEX1MSB

SDL_PIXELTYPE_INDEX4 SDL_BITMAPORDER_4321 0 4 0
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_INDEX4LSB

SDL_PIXELTYPE_INDEX4 SDL_BITMAPORDER_1234 0 4 0 
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_INDEX4MSB

SDL_PIXELTYPE_INDEX8 0 0 8 1
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_INDEX8

SDL_PIXELTYPE_PACKED8 SDL_PACKEDORDER_XRGB SDL_PACKEDLAYOUT_332 8 1
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB332

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_XRGB SDL_PACKEDLAYOUT_4444 12 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB444

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_XRGB SDL_PACKEDLAYOUT_1555 15 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB555

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_XBGR SDL_PACKEDLAYOUT_1555 15 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGR555

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_ARGB SDL_PACKEDLAYOUT_4444 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ARGB4444

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_RGBA SDL_PACKEDLAYOUT_4444 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGBA4444 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_ABGR SDL_PACKEDLAYOUT_4444 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ABGR4444 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_BGRA SDL_PACKEDLAYOUT_4444 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGRA4444 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_ARGB SDL_PACKEDLAYOUT_1555 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ARGB1555 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_RGBA SDL_PACKEDLAYOUT_5551 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGBA5551 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_ABGR SDL_PACKEDLAYOUT_1555 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ABGR1555 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_BGRA SDL_PACKEDLAYOUT_5551 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGRA5551 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_XRGB SDL_PACKEDLAYOUT_565 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB565 

SDL_PIXELTYPE_PACKED16 SDL_PACKEDORDER_XBGR SDL_PACKEDLAYOUT_565 16 2
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGR565 

SDL_PIXELTYPE_ARRAYU8 SDL_ARRAYORDER_RGB 0 24 3
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB24 

SDL_PIXELTYPE_ARRAYU8 SDL_ARRAYORDER_BGR 0 24 3
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGR24 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_XRGB SDL_PACKEDLAYOUT_8888 24 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGB888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_RGBX SDL_PACKEDLAYOUT_8888 24 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGBX8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_XBGR SDL_PACKEDLAYOUT_8888 24 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGR888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_BGRX SDL_PACKEDLAYOUT_8888 24 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGRX8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_ARGB SDL_PACKEDLAYOUT_8888 32 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ARGB8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_RGBA SDL_PACKEDLAYOUT_8888 32 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_RGBA8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_ABGR SDL_PACKEDLAYOUT_8888 32 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ABGR8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_BGRA SDL_PACKEDLAYOUT_8888 32 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_BGRA8888 

SDL_PIXELTYPE_PACKED32 SDL_PACKEDORDER_ARGB SDL_PACKEDLAYOUT_2101010 32 4
SDL_DEFINE_PIXELFORMAT constant SDL_PIXELFORMAT_ARGB2101010 

char Y char V char 1 char 2
SDL_DEFINE_PIXELFOURCC constant SDL_PIXELFORMAT_YV12

char I char Y char U char V
SDL_DEFINE_PIXELFOURCC constant SDL_PIXELFORMAT_IYUV

char Y char U char Y char 2
SDL_DEFINE_PIXELFOURCC constant SDL_PIXELFORMAT_YUY2

char U char Y char V char Y
SDL_DEFINE_PIXELFOURCC constant SDL_PIXELFORMAT_UYVY

char Y char V char Y char U
SDL_DEFINE_PIXELFOURCC constant SDL_PIXELFORMAT_YVYU

: SDL_ISPIXELFORMAT_FOURCC ( format -- flag )
	dup SDL_PIXELFLAG 1 <> and ;

: SDL_ISPIXELFORMAT_INDEXED ( format -- flag )
	dup sdl_ispixelformat_fourcc 0= swap
	dup sdl_pixeltype sdl_pixeltype_index1 = swap
	dup sdl_pixeltype sdl_pixeltype_index4 = swap
	sdl_pixeltype sdl_pixeltype_index8 = 
	or or and ;

: SDL_ISPIXELFORMAT_ALPHA ( format -- flag )
	dup sdl_ispixelformat_fourcc 0= swap
	dup sdl_pixelorder sdl_packedorder_argb = swap
	dup sdl_pixelorder sdl_packedorder_rgba = swap
	dup sdl_pixelorder sdl_packedorder_abgr = swap
	sdl_pixelorder sdl_packedorder_bgra = 
	or or or and ;

: SDL_BYTESPERPIXEL ( format -- n )
	dup sdl_ispixelformat_fourcc if
		dup sdl_pixelformat_yuy2 swap
		dup sdl_pixelformat_uyvy swap
		sdl_pixelformat_yvyu 
		or or if 2 else 1 then
	else
		$ff and 
	then ;

: SDL_Color ( n -- ) value ;
: SDL_Color:r ;
: SDL_Color:g 1+ ;
: SDL_Color:b 2+ ;
: SDL_Color:a 3 + ;

: SDL_Palette create 4 cells allot ;
: SDL_Palette:ncolors ;
: SDL_Palette:colors 1 cells + ;
: SDL_Palette:version 2 cells + ;
: SDL_Palette:refcount 3 cells + ;

: SDL_PixelFormat create 11 cells allot ;
: SDL_PixelFormat:format ;
: SDL_PixelFormat:palette 1 cells + ;
: SDL_PixelFormat:BitsPerPixel 2 cells + ; \ byte
: SDL_PixelFormat:BytesPerPixel 2 cells + 1+ ; \ byte
: SDL_PixelFormat:Rmask 3 cells + ;
: SDL_PixelFormat:Gmask 4 cells + ;
: SDL_PixelFormat:Bmask 4 cells + ;
: SDL_PixelFormat:Amask 5 cells + ;
: SDL_PixelFormat:Rloss 6 cells + ;		\ byte
: SDL_PixelFormat:Gloss 6 cells + 1+ ;		\ byte
: SDL_PixelFormat:Bloss 6 cells + 2+ ;		\ byte
: SDL_PixelFormat:Aloss 6 cells + 3 + ;		\ byte
: SDL_PixelFormat:Rshift 7 cells + ;	\ byte
: SDL_PixelFormat:Gshift 7 cells + 1+ ;	\ byte
: SDL_PixelFormat:Bshift 7 cells + 2+ ;	\ byte
: SDL_PixelFormat:Ashift 7 cells + 3 + ;	\ byte
: SDL_PixelFormat:refcount 8 cells + ;
: SDL_PixelFormat:next 9 cells + ;

FUNCTION: SDL_GetPixelFormatName ( format -- z )
FUNCTION: SDL_PixelFormatEnumToMasks ( format bpp* rmask* gmask* bmask* amask* -- flag )
FUNCTION: SDL_MasksToPixelFormatEnum ( bpp rmask gmask bmask amask -- n )
FUNCTION: SDL_AllocFormat ( n -- format )
FUNCTION: SDL_FreeFormat ( format -- )
FUNCTION: SDL_AllocPalette ( ncolors -- palette )
FUNCTION: SDL_SetPixelFormatPalette ( format, palette -- flag )
FUNCTION: SDL_SetPaletteColors ( palette colors* first n -- flag )
FUNCTION: SDL_FreePalette ( palette -- )
FUNCTION: SDL_MapRGB ( format r g b -- n )
FUNCTION: SDL_MapRGBA ( format r g b a -- n )
FUNCTION: SDL_GetRGB ( n format r* g* b* -- )
FUNCTION: SDL_GetRGBA ( n format r* g* b* a* -- )
FUNCTION: SDL_CalculateGammaRamp ( F:gamma ramp* -- )  \ ramp is Uint16[256]
