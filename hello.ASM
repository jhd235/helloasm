format PE console 4.0 ; define Portable Executable format and version
include "win32ax.inc" ;include win32 extended header library with needed functions
start: ; program entry
mov eax, 23h  ; put 23h (hexadecimal) to eax register - 35 (decimal)
;cinvoke printf,formatstring,eax
mov ebx, 43h  ; put 43h to ebx 67 decimal
;cinvoke printf,formatstring,ebx
add eax, ebx ; add ebx value to eax and store inside eax

cinvoke printf,formatstring,eax    ; some fancy print function from header library

invoke  Sleep,-1

formatstring    db "%d",13,10,0 ; seems like formats to decimal

section '.idata' import data readable   ; some kind of data imports to make things happen

library msvcrt,'msvcrt.dll',\
        kernel32,'kernel32.dll'

import  msvcrt,printf,'printf'
import  kernel32,Sleep,'Sleep'

section '.data'
hello db "Hello!"