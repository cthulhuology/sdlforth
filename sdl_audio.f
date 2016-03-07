\ audio 
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
enum SDL_AUDIO_STOPPED
enum SDL_AUDIO_PLAYING
enum SDL_AUDIO_PAUSED
drop

$ff constant SDL_AUDIO_MASK_BITSIZE
1 8 lshift constant SDL_AUDIO_MASK_DATATYPE
1 12 lshift constant SDL_AUDIO_MASK_ENDIAN
1 15 lshift constant SDL_AUDIO_MASK_SIGNED
: SDL_AUDIO_BITSIZE SDL_AUDIO_MASK_BITSIZE and  ;
: SDL_AUDIO_ISFLOAT SDL_AUDIO_MASK_DATATYPE and  ;
: SDL_AUDIO_ISBIGENDIAN SDL_AUDIO_MASK_ENDIAN and  ;
: SDL_AUDIO_ISSIGNED SDL_AUDIO_MASK_SIGNED and  ;
: SDL_AUDIO_ISINT SDL_AUDIO_ISFLOAT not ;
: SDL_AUDIO_ISLITTLEENDIAN SDL_AUDIO_ISBIGENDIAN not ;
: SDL_AUDIO_ISUNSIGNED SDL_AUDIO_ISSIGNED not ;
$0008 constant AUDIO_U8
$8008 constant AUDIO_S8
$0010 constant AUDIO_U16LSB
$8010 constant AUDIO_S16LSB
$1010 constant AUDIO_U16MSB
$9010 constant AUDIO_S16MSB
AUDIO_U16LSB constant AUDIO_U16 
AUDIO_S16LSB constant AUDIO_S16
$8020 constant AUDIO_S32LSB
$9020 constant AUDIO_S32MSB
AUDIO_S32LSB constant AUDIO_S32
$8120 constant AUDIO_F32LSB    
$9120 constant AUDIO_F32MSB    
AUDIO_F32LSB constant AUDIO_F32       

$00000001 constant SDL_AUDIO_ALLOW_FREQUENCY_CHANGE    
$00000002 constant SDL_AUDIO_ALLOW_FORMAT_CHANGE       
$00000004 constant SDL_AUDIO_ALLOW_CHANNELS_CHANGE     

SDL_AUDIO_ALLOW_FREQUENCY_CHANGE SDL_AUDIO_ALLOW_FORMAT_CHANGE or 
SDL_AUDIO_ALLOW_CHANNELS_CHANGE or constant SDL_AUDIO_ALLOW_ANY_CHANGE          

128 constant SDL_MIX_MAXVOLUME

: SDL_AudioSpec create 6 cells allot ;
: SDL_AudioSpec:freq ;
: SDL_AudioSpec:format 1 cells + ;	\ uint16
: SDL_AudioSpec:channels 1 cells + 2+ ;	\ byte
: SDL_AudioSpec:silence 1 cells + 3 + ;	\ byte
: SDL_AudioSpec:samples 2 cells + ;	\ uint16
: SDL_AudioSpec:padding 2 cells + 2+ ;	\ uint16
: SDL_AudioSpec:size 3 cells + ;
: SDL_AudioSpec:callback 4 cells + ;
: SDL_AudioSpec:userdate 5 cells + ;

: SDL_AudioCVT create 21 cells allot ;
: SDL_AudioCVT:needed ;
: SDL_AudioCVT:src_format 1 cells + ;		\ uint16
: SDL_AudioCVT:dst_format 1 cells + 2+ ;	\ uint16
: SDL_AudioCVT:rate_incr 2 cells + ;		\ double
: SDL_AudioCVT:buf 4 cells + ;			\ byte*
: SDL_AudioCVT:len 5 cells + ;			
: SDL_AudioCVT:len_cvt 6 cells + ;			
: SDL_AudioCVT:len_mult 7 cells + ;			
: SDL_AudioCVT:len_ratio 8 cells + ;		\ double
: SDL_AudioCVT:filters 10 cells + ;		\ 10 function pointers
: SDL_AudioCVT:filter_index 20 cells + ;

FUNCTION: SDL_GetNumAudioDrivers ( -- n )
FUNCTION: SDL_GetAudioDriver ( n -- z )
FUNCTION: SDL_AudioInit ( z -- flag )
FUNCTION: SDL_AudioQuit ( -- )
FUNCTION: SDL_GetCurrentAudioDriver ( -- z )
FUNCTION: SDL_OpenAudio ( desired obtained -- flag )
FUNCTION: SDL_GetNumAudioDevices ( flag -- n )
FUNCTION: SDL_GetAudioDeviceName ( n flag -- z )
FUNCTION: SDL_OpenAudioDevice ( z flag desired obtained n -- n )
FUNCTION: SDL_GetAudioStatus ( -- n )
FUNCTION: SDL_GetAudioDeviceStatus ( dev -- n )
FUNCTION: SDL_PauseAudio ( flag -- )
FUNCTION: SDL_PauseAudioDevice ( dev flag -- )
FUNCTION: SDL_LoadWAV_RW ( rwops freesrc spec buf* len* -- spec )
FUNCTION: SDL_FreeWAV ( audio_buf -- )
FUNCTION: SDL_BuildAudioCVT ( cvt src_fmt src_chan rate dst_fmt dst_chan rate -- n )
FUNCTION: SDL_ConvertAudio ( cvt -- n )
FUNCTION: SDL_MixAudio ( dst src len vol -- )
FUNCTION: SDL_MixAudioFormat ( dst src fmt len vol -- )
FUNCTION: SDL_LockAudio ( -- )
FUNCTION: SDL_LockAudioDevice ( dev -- )
FUNCTION: SDL_UnlockAudio ( -- )
FUNCTION: SDL_UnlockAudioDevice ( dev -- )
FUNCTION: SDL_CloseAudio ( -- )
FUNCTION: SDL_CloseAudioDevice ( dev -- )

: SDL_LoadWAV ( file spec audio_buf audio_len -- flag )
	>r >r >r 
	z" rb" SDL_RWFromFile r> r> r>  SDL_LoadWAV_RW  ;

