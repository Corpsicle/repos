!****************************************************************************
!  Global data, parameters, and structures 
!****************************************************************************

module WinHelloGlobals
use ifwinty

implicit none

!  Parameters

integer*4, parameter, public :: SIZEOFAPPNAME = 100
integer*4, parameter, public :: SIZEOFCAPTIONTEXT = 20
integer*4, parameter, public :: SIZEOFINFO        = 44
integer*4, parameter, public :: SIZEOFLF          = 60
integer*4, parameter, public :: SIZEOFACH         = 128

!  Global data

integer(HANDLE)		ghInstance
integer(HANDLE)		ghModule
integer(HANDLE)		ghwndMain
integer(HANDLE)		ghMenu
integer(HANDLE)		ghwndClient
integer		giMDICount
integer(HANDLE)		ghMenuWindow
integer(HANDLE)		ghChildMenu
integer(HANDLE)		ghChildMenuWindow


!  Data structures
type PERWNDINFO
	integer(HANDLE)                hParent
	integer(HANDLE)                hTextWnd
	type(T_RECT)                   rcClient
	character*(SIZEOFCAPTIONTEXT)  CaptionBarText
end type PERWNDINFO

interface RGBX

function RGB1 (red, green, blue)
use ifwinty
integer(ULONG) :: RGB1
!DEC$ ATTRIBUTES DEFAULT, STDCALL, DECORATE, ALIAS:'Rgb' :: RGB1
INTEGER(1)  red
INTEGER(1)  green
INTEGER(1)  blue
end function RGB1

function RGB2 (red, green, blue)
use ifwinty
integer(ULONG) :: RGB2
!DEC$ ATTRIBUTES DEFAULT, STDCALL, DECORATE, ALIAS:'Rgb' :: RGB2
INTEGER(2)  red
INTEGER(2)  green
INTEGER(2)  blue
end function RGB2

function RGB4 (red, green, blue)
integer(4) :: RGB4
!DEC$ ATTRIBUTES DEFAULT, STDCALL, DECORATE, ALIAS:'Rgb' :: RGB4
INTEGER(4)  red
INTEGER(4)  green
INTEGER(4)  blue
end function RGB4

end interface RGBX

end module
