\ std stuff
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

FUNCTION: SDL_malloc ( size -- )
FUNCTION: SDL_calloc ( nmemb size -- )
FUNCTION: SDL_realloc ( addr size -- )
FUNCTION: SDL_free ( addr -- )
FUNCTION: SDL_getenv ( z -- z )
FUNCTION: SDL_setenv ( z z flag -- flag ) 
FUNCTION: SDL_qsort ( addr nmemb size, xt -- void )
FUNCTION: SDL_abs ( n -- n )
FUNCTION: SDL_isdigit ( n -- flag )
FUNCTION: SDL_isspace ( n -- flag )
FUNCTION: SDL_toupper ( n -- n )
FUNCTION: SDL_tolower ( n -- n )
FUNCTION: SDL_memset ( addr c len -- )
FUNCTION: SDL_memcpy ( dst src len -- )
FUNCTION: SDL_memmove ( dst src len -- )
FUNCTION: SDL_memcmp ( addr1 addr2 len -- n )
FUNCTION: SDL_wcslen ( w -- n )
FUNCTION: SDL_wcslcpy ( wdst wsrc maxlen -- n )
FUNCTION: SDL_wcslcat ( wdst wsrc maxlen -- n )
FUNCTION: SDL_strlen ( z -- n )
FUNCTION: SDL_strlcpy ( z z maxlen -- n )
FUNCTION: SDL_utf8strlcpy ( z z dst_bytes -- n )
FUNCTION: SDL_strlcat ( z z maxlen -- n )
FUNCTION: SDL_strdup ( z -- n )
FUNCTION: SDL_strrev ( z -- n )
FUNCTION: SDL_strupr ( z -- n )
FUNCTION: SDL_strlwr ( z -- n )
FUNCTION: SDL_strchr ( z c -- n )
FUNCTION: SDL_strrchr ( z c -- n )
FUNCTION: SDL_strstr ( z z -- n )
FUNCTION: SDL_itoa ( n z n -- n )
FUNCTION: SDL_uitoa ( n z n -- n )
FUNCTION: SDL_ltoa ( n z n -- n )
FUNCTION: SDL_ultoa ( n z n -- n )
FUNCTION: SDL_lltoa ( d z n -- n )
FUNCTION: SDL_ulltoa ( d z n -- n )
FUNCTION: SDL_atoi ( z -- n )
FUNCTION: SDL_atof ( z -- d )
FUNCTION: SDL_strtol ( z z* n -- n )
FUNCTION: SDL_strtoul ( z z* n -- u )
FUNCTION: SDL_strtoll ( z z* n -- d )
FUNCTION: SDL_strtoull ( z z* n -- d )
FUNCTION: SDL_strtod ( z z* -- d )
FUNCTION: SDL_strcmp ( z1 z2 -- n )
FUNCTION: SDL_strncmp ( z1 z2 maxlen -- n )
FUNCTION: SDL_strcasecmp ( z1 z2 -- n )
FUNCTION: SDL_strncasecmp ( z1 z2 len -- n )
FUNCTION: SDL_sscanf ( z z ... -- n )
FUNCTION: SDL_vsscanf ( z z ap -- n )
FUNCTION: SDL_snprintf ( z maxlen z ... -- n )
FUNCTION: SDL_vsnprintf ( z maxlen z ap -- n )
FUNCTION: SDL_acos ( d -- d )
FUNCTION: SDL_asin ( d -- d )
FUNCTION: SDL_atan ( d -- d )
FUNCTION: SDL_atan2 ( d1 d2 -- d )
FUNCTION: SDL_ceil ( d -- d )
FUNCTION: SDL_copysign ( d1 d2 -- d )
FUNCTION: SDL_cos ( d -- d )
FUNCTION: SDL_cosf ( f -- f )
FUNCTION: SDL_fabs ( d -- d )
FUNCTION: SDL_floor ( d -- d )
FUNCTION: SDL_log ( d -- d )
FUNCTION: SDL_pow ( d1 d2 -- d )
FUNCTION: SDL_scalbn ( d n -- d )
FUNCTION: SDL_sin ( d -- d )
FUNCTION: SDL_sinf ( f -- f )
FUNCTION: SDL_sqrt ( d -- d )
FUNCTION: SDL_iconv_open ( tocode*, fromcode* -- iconv )
FUNCTION: SDL_iconv_close ( iconv -- n )
FUNCTION: SDL_iconv ( iconv, in**  inleft* out** outleft* -- n )
FUNCTION: SDL_iconv_string ( tocode* fromcode* inbuf* inleft -- n )
