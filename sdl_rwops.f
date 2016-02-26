\ rwops
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

0
enum SDL_RWOPS_UNKNOWN
enum SDL_RWOPS_WINFILE
enum SDL_RWOPS_STDFILE
enum SDL_RWOPS_JNIFILE
enum SDL_RWOPS_MEMORY
enum SDL_RWOPS_MEMORY_RO
drop

FUNCTION: SDL_RWFromFile ( zfile zmode -- rwops )
FUNCTION: SDL_RWFromFP ( file* flag -- rwops )
FUNCTION: SDL_RWFromMem ( addr n -- rwops )
FUNCTION: SDL_RWFromConstMem ( addr n -- rwops )
FUNCTION: SDL_AllocRW ( -- rwops )
FUNCTION: SDL_FreeRW ( rwops -- )

0
enum RW_SEEK_SET
enum RW_SEEK_CUR
enum RW_SEEK_END
drop

: SDL_RWops:size @ ;
: SDL_RWops:seek 1 cells + @ ;
: SDL_RWops:read 2 cells + @ ;
: SDL_RWops:write 3 cells + @ ;
: SDL_RWops:close 4 cells + @ ; 

\ typical file operations, vectored via rwops structure
: SDL_RWsize ( rwops -- n ) 1 over SDL_RWops:size EXTERN-CALL ;
: SDL_RWseek ( rwops offset whence -- n ) 
	rot dup SDL_RWops:seek >r -rot 3 r> EXTERN-CALL ;
: SDL_RWtell ( rwops -- n ) 0 RW_SEEK_CUR SDL_RWseek ;
: SDL_RWread ( rwops ptr size max -- n )  
	>r rot dup SDL_RWops:read >r -rot
	r> r> swap 4 swap EXTERN-CALL ;
: SDL_RWwrite ( rwop ptr size num -- n ) 
	>r rot dup SDL_RWops:write >r -rot
	r> r> swap 4 swap EXTERN-CALL ;
: SDL_RWclose ( rwops -- n ) 1 over SDL_RWops:close EXTERN-CALL ;

FUNCTION: SDL_ReadU8 ( rwops -- n ) 
FUNCTION: SDL_ReadLE16 ( rwops -- n ) 
FUNCTION: SDL_ReadBE16 ( rwops -- n ) 
FUNCTION: SDL_ReadLE32 ( rwops -- n ) 
FUNCTION: SDL_ReadBE32 ( rwops -- n ) 
FUNCTION: SDL_ReadLE64 ( rwops -- d ) 
FUNCTION: SDL_ReadBE64 ( rwops -- d ) 

FUNCTION: SDL_WriteU8 ( rwops n -- n )
FUNCTION: SDL_WriteLE16 ( rwops n -- n )
FUNCTION: SDL_WriteBE16 ( rwops n -- n )
FUNCTION: SDL_WriteLE32 ( rwops n -- n )
FUNCTION: SDL_WriteBE32 ( rwops n -- n )
FUNCTION: SDL_WriteLE64 ( rwops d -- n )
FUNCTION: SDL_WriteBE64 ( rwops d -- n )

