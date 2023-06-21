!  WinHello.f90 
!
!  FUNCTIONS:
!   WinMain()      - Entry point for the application;
!                    displays the main window; processes the message loop
!   MainWndProc()  - processes messages for the main window
!   MDIWndProc()   - processes messages for MDI child windows
!   TextWndProc()  - processes messages for text child of MDI child windows
!   CenterWindow() - centers one window over another
!   AboutDlgProc() - processes messages for the about box
!

!****************************************************************************
!
!  FUNCTION: WinMain( hInstance, hPrevInstance, lpszCmdLine, nCmdShow )
!
!  PURPOSE:  Entry point for the application
!
!  COMMENTS: Displays the main window and processes the message loop
!
!****************************************************************************

function WinMain( hInstance, hPrevInstance, lpszCmdLine, nCmdShow )
!DEC$ IF DEFINED(_X86_)
!DEC$ ATTRIBUTES STDCALL, ALIAS : '_WinMain@16' :: WinMain
!DEC$ ELSE
!DEC$ ATTRIBUTES STDCALL, ALIAS : 'WinMain' :: WinMain
!DEC$ ENDIF

    use user32
    use kernel32
    use WinHelloGlobals

    implicit none

    integer(SINT) :: WinMain
    integer(HANDLE) hInstance
    integer(HANDLE) hPrevInstance
    integer(LPWSTR) lpszCmdLine
    integer(SINT)   nCmdShow

    include 'WinHello.fi'

    ! Variables
    type (T_WNDCLASS)       wc
    type (T_MSG)            mesg
    integer*4               ret
    integer(LRESULT)        lret
    integer(BOOL)           bret
    integer(SINT)           iret
    integer(HANDLE)                 haccel

    character(SIZEOFAPPNAME) lpszClassName
    character(SIZEOFAPPNAME) lpszIconName
    character(SIZEOFAPPNAME) lpszAppName
    character(SIZEOFAPPNAME) lpszMenuName
    character(SIZEOFAPPNAME) lpszAccelName
    character(SIZEOFAPPNAME) lpszMDIClassName
    character(SIZEOFAPPNAME) lpszMDITextClassName
    character(SIZEOFAPPNAME) lpszMDIMenuName

    ghInstance = hInstance
    ghModule = GetModuleHandle(NULL)
    ghwndMain = NULL

    lpszClassName ="WinHelloMain"C
    lpszMDIClassName ="WinHello"C
    lpszMDITextClassName ="WinHelloText"C
    lpszAppName ="WinHello"C
    lpszIconName ="WinHello"C  
    lpszMenuName ="WinHello"C
    lpszAccelName ="WinHello"C

    !  If this is the first instance of the application, register the
    !  window class(es)
    if (hPrevInstance .eq. 0) then
        !  Main window
         wc%lpszClassName = LOC(lpszClassName)
         wc%lpfnWndProc = LOC(MainWndProc)
         wc%style = CS_OWNDC
         wc%hInstance = hInstance
         wc%hIcon = LoadIcon( hInstance, LOC(lpszIconName))
         wc%hCursor = LoadCursor( NULL, IDC_ARROW )
         wc%hbrBackground = ( COLOR_WINDOW+1 )
         wc%lpszMenuName = NULL
         wc%cbClsExtra = 0
         wc%cbWndExtra = 4
         if (RegisterClass(wc) == 0) goto 99999

        !  MDI Child window
         wc%lpszClassName = LOC(lpszMDIClassName)
         wc%lpfnWndProc = LOC(MDIWndProc)
         if (RegisterClass(wc) == 0) goto 99999

        !  Text window (child of MDI Child window)
         wc%lpszClassName = LOC(lpszMDITextClassName)
         wc%lpfnWndProc = LOC(TextWndProc)
         wc%style = IOR(CS_OWNDC, IOR(CS_HREDRAW, CS_VREDRAW))
         wc%hIcon = NULL
         wc%hbrBackground = ( COLOR_BTNSHADOW )
         if (RegisterClass(wc) == 0) goto 99999
    end if

    ! Load the window's menu and accelerators and create the window
    !
    ghMenu = LoadMenu(hInstance, LOC(lpszMenuName))
    if (ghMenu == 0) goto 99999
    haccel = LoadAccelerators(hInstance, LOC(lpszAccelName))
    if (haccel == 0) goto 99999

    ! Load the child window's menu
    !
    lpszMDIMenuName = "WinHelloChild"C
    ghChildMenu = LoadMenu(hInstance, LOC(lpszMDIMenuName))
    if (ghMenu == 0) goto 99999
    ghMenuWindow = GetSubMenu(ghMenu, 1)
    ghChildMenuWindow = GetSubMenu(ghChildMenu, 2)

    ghwndMain = CreateWindowEx(  0, lpszClassName,                 &
                                 lpszAppName,                      &
       IOR(WS_OVERLAPPED, IOR(WS_CAPTION, IOR(WS_BORDER,           &
       IOR(WS_THICKFRAME, IOR(WS_MAXIMIZEBOX, IOR(WS_MINIMIZEBOX,  &
       IOR(WS_CLIPCHILDREN, IOR(WS_VISIBLE, WS_SYSMENU)))))))),    &
                                 CW_USEDEFAULT,                    &
                                 0,                                &
                                 CW_USEDEFAULT,                    &
                                 0,                                &
                                 NULL,                             &
                                 ghMenu,                           &
                                 hInstance,                        &
                                 NULL                              &
                              )
    if (ghwndMain == 0) goto 99999

    lret = ShowWindow( ghwndMain, nCmdShow )

    ! Read and process messsages
    do while( GetMessage (mesg, NULL, 0, 0) ) 
       if (( TranslateAccelerator (ghwndMain, haccel, mesg) == 0) &
            .AND. (TranslateMDISysAccel( ghwndClient, mesg) .EQV. FALSE)) then
           bret = TranslateMessage( mesg )
           lret  = DispatchMessage( mesg )
       end if
    end do

    WinMain = mesg.wParam
    return

99999 &

    iret = MessageBox(ghwndMain, "Error initializing application WinHello"C, &
                     "Error"C, MB_OK)
    WinMain = 0

end 

!****************************************************************************
!
!  FUNCTION: MainWndProc ( hWnd, mesg, wParam, lParam )
!
!  PURPOSE:  Processes messages for the main window
!
!  COMMENTS:
!
!****************************************************************************

integer(LRESULT) function MainWndProc ( hWnd, mesg, wParam, lParam )
!DEC$ IF DEFINED(_X86_)
!DEC$ ATTRIBUTES STDCALL, ALIAS : '_MainWndProc@16' :: MainWndProc
!DEC$ ELSE
!DEC$ ATTRIBUTES STDCALL, ALIAS : 'MainWndProc' :: MainWndProc
!DEC$ ENDIF

    use user32
    use kernel32
    use ifwbase
    use WinHelloGlobals

    implicit none

    integer(HANDLE) hWnd
    integer(UINT) mesg
    integer(UINT_PTR) wParam
    integer(LONG_PTR) lParam 

    include 'resource.fd'

    interface 
    function  AboutDlgProc( hwnd, mesg, wParam, lParam )
    !DEC$ IF DEFINED(_X86_)
    !DEC$ ATTRIBUTES STDCALL, ALIAS : '_AboutDlgProc@16' :: AboutDlgProc
    !DEC$ ELSE
    !DEC$ ATTRIBUTES STDCALL, ALIAS : 'AboutDlgProc' :: AboutDlgProc
    !DEC$ ENDIF
    use ifwinty
    integer(LRESULT) :: AboutDlgProc ! LRESULT
    integer(HANDLE)   hwnd 
    integer(UINT)     mesg  
    integer(UINT_PTR) wParam
    integer(LONG_PTR) lParam 
    end function 
    end interface

    ! Variables
    type (T_CLIENTCREATESTRUCT) clientcreate
    type (T_MDICREATESTRUCT)    mdicreate
    integer(HANDLE)           hwndChildWindow
    integer(HANDLE)           hInfo
    integer(LPVOID)           pInfo
    type (PERWNDINFO)   Info
    integer(HANDLE)           hActiveChild
    character(SIZEOFAPPNAME)  lpszTitle, lpszCaption
    integer(BOOL)       lret
    integer(LRESULT)     ret
    character(SIZEOFAPPNAME)  lpszName, lpszHelpFileName, lpszContents, lpszMessage
    character(SIZEOFAPPNAME)  lpszHeader

    select case ( mesg )

    ! WM_CREATE: Create the MDICLIENT window which contains the MDI children
      case (WM_CREATE)
          lpszName = "MDICLIENT"C
          clientcreate%hWindowMenu = ghMenuWindow
          clientcreate%idFirstChild = 1
          ghwndClient = CreateWindowEx(0,                           &
                                    lpszName, ""C,                  &
                    IOR(WS_CHILD, IOR(WS_CLIPCHILDREN, WS_VISIBLE)),&
                                    0, 0, 0, 0,                     &
                                    hwnd, NULL, ghInstance,         &
                                    LOC(clientcreate))
          MainWndProc = 0
          return

    ! WM_DESTROY: PostQuitMessage() is called 
      case (WM_DESTROY)
          call PostQuitMessage( 0 )
          MainWndProc = 0
          return

    ! WM_COMMAND: user command
      case (WM_COMMAND)
        select case ( IAND(wParam, 16#ffff ) )

            ! Handle standard MDI messages
            case (IDM_TILE)
                ret = SendMessage(                                &
                    ghwndClient, WM_MDITILE, 0, 0)
                MainWndProc = 0
                return
            case (IDM_CASCADE)
                ret = SendMessage(                                &
                    ghwndClient, WM_MDICASCADE, 0, 0)
                MainWndProc = 0
                return
            case (IDM_ARRANGE)
                ret = SendMessage(                                &
                    ghwndClient, WM_MDIICONARRANGE, 0, 0)
                MainWndProc = 0
                return

            case (IDM_NEW)
            ! Creates MDI child

            ! Allocate memory for INFO to be associated with the
            !  new child
                hInfo = LocalAlloc(LHND, SIZEOFINFO)
                if (hInfo .NE. 0) then
                    pInfo = LocalLock(hInfo)
                    if (pInfo == NULL) then
                        ret = MessageBox(ghwndMain,"Failed in LocalLock"C,"Error"C, MB_OK)
                    end if
                    ret = lstrcpy(lpszCaption, "MDI "C)
                    write (lpszCaption, 100 ) giMDICount
100                 format ('MDI', I4)
                    Info%CaptionBarText = lpszCaption
                    Info%hParent     = ghwndClient
                    call CopyMemory(pInfo, LOC(Info), 44) ! SIZEOFINFO = 44

                    lpszTitle = Info%CaptionBarText // ""C
                    lpszName ="WinHello"C
                    mdicreate%szClass = LOC(lpszName)
                    mdicreate%szTitle = LOC(lpszTitle)
                    mdicreate%hOwner  = ghModule
                    mdicreate%x       = CW_USEDEFAULT
                    mdicreate%y       = CW_USEDEFAULT
                    mdicreate%cx      = CW_USEDEFAULT
                    mdicreate%cy      = CW_USEDEFAULT
                    mdicreate%style   = 0
                    ! Pass the handle of the per MDI child INFO to the
                    ! child MDI window for storage
                    mdicreate%lParam  = hInfo

                    ! Create Child Window
                    hwndChildWindow = SendMessage(ghwndClient,    &
                             WM_MDICREATE, 0,               &
                             LOC(mdicreate))

                    if (hwndChildWindow == NULL) then
                        ret = MessageBox(ghwndMain,"Failed in Creating Child Window"C,& 
                                         "Error"C, MB_OK)
                        MainWndProc = 0
                        return
                    end if

                    giMDICount = giMDICount + 1

                    lret = LocalUnlock(hInfo)
                else
                    ret = MessageBox(ghwndMain,"Failed to Allocate INFO data!"C,& 
                            "Error"C, MB_OK)
                end if
                MainWndProc = 0
                return

            ! Pass these WM_COMMAND messages to the appropriate active child
            ! window proc for processing
            case (IDM_OPT_1, IDM_OPT_2, IDM_OPT_3, IDM_OPT_4,     &
                  IDM_OPT_5, IDM_OPT_6, IDM_OPT_7, IDM_OPT_8)

                hActiveChild = SendMessage(ghwndClient,           &
                                            WM_MDIGETACTIVE, 0, 0)
                if (hActiveChild .NE. 0) then
                    ret = SendMessage(hActiveChild, WM_COMMAND,   &
                                    wParam, lParam)
                end if
                MainWndProc = 0
                return
 
            case (IDM_EXIT)
                ret = SendMessage( hWnd, WM_CLOSE, 0, 0 )
                MainWndProc = 0
                return
  
            case (IDM_ABOUT)
                lpszName = "AboutDlg"C
                ret = DialogBoxParam(ghInstance,LOC(lpszName),hWnd,& 
                  LOC(AboutDlgProc), 0_LONG_PTR)
                MainWndProc = 0
                return

            case (IDM_HELPCONTENTS)  
                lpszHelpFileName ="\\WinHello.hlp"C
                lpszContents = "CONTENTS"C
                if (WinHelp (hWnd, lpszHelpFileName, HELP_KEY, &
                               LOC(lpszContents)) .EQV. FALSE) then
                lpszMessage = "Unable to activate help"C
                lpszHeader = "WinHello"
                ret = MessageBox (hWnd,                             &
                                 lpszMessage,                       &
                                 lpszHeader,                        &
                                 IOR(MB_SYSTEMMODAL,                &
                                 IOR(MB_OK, MB_ICONHAND)))
                end if
                MainWndProc = 0
                return

            case (IDM_HELPSEARCH)
                lpszHelpFileName ="\\WinHello.hlp"C
                lpszContents = "CONTENTS"C
                if (WinHelp(hWnd, "WinHello.hlp"C,            &
                       HELP_PARTIALKEY, LOC(""C)) .EQV. FALSE) then
                   lpszMessage = "Unable to activate help"C
                   lpszHeader = "WinHello"C
                   ret = MessageBox (hWnd,                          &
                                 lpszMessage,                       &
                                 lpszHeader,                        &
                                 IOR(MB_SYSTEMMODAL ,               &
                                 IOR(MB_OK, MB_ICONHAND)))
                end if
                MainWndProc = 0
                return

            case (IDM_HELPHELP)
                if (WinHelp(hWnd, ""C, HELP_HELPONHELP, 0).EQV. FALSE)& 
                                                       then
                   lpszMessage = "Unable to activate help"C
                   lpszHeader = "WinHello"C
                   ret = MessageBox (GetFocus(),                    &
                                 lpszMessage,                       &
                                 lpszHeader,                        &
                                 IOR(MB_SYSTEMMODAL,IOR(MB_OK, MB_ICONHAND)))
                end if
                MainWndProc = 0
                return

            ! All of the other possible menu options are currently disabled

            case DEFAULT
                MainWndProc = DefFrameProc( hWnd, ghwndClient, mesg, wParam, lParam )
                return
        end select

    ! Let the default window proc handle all other messages
      case default
          MainWndProc = DefFrameProc( hWnd, ghwndClient, mesg, wParam, lParam )

    end select

end

!****************************************************************************
!
!  FUNCTION: MDIWndProc ( hWnd, mesg, wParam, lParam )
!
!  PURPOSE:  Processes messages for MDI child windows
!
!  COMMENTS:
!
!****************************************************************************

function MDIWndProc ( hwnd, message, wParam, lParam )
!DEC$ IF DEFINED(_X86_)
!DEC$ ATTRIBUTES STDCALL, ALIAS : '_MDIWndProc@16' :: MDIWndProc
!DEC$ ELSE
!DEC$ ATTRIBUTES STDCALL, ALIAS : 'MDIWndProc' :: MDIWndProc
!DEC$ ENDIF

    use user32
    use kernel32
    use ifwbase
    use WinHelloGlobals

    implicit none

    integer(LRESULT) :: MDIWndProc ! LRESULT
    integer(HANDLE)   hwnd
    integer(UINT)   message
    integer(UINT_PTR)   wParam
    integer(LONG_PTR)   lParam

    include 'resource.fd'

    ! Variables
    integer(HANDLE)   hInfo, hInfo1, hInfo2
    integer(LPVOID)   pInfo, pInfo1, pInfo2
    integer(HANDLE)   hTextWnd, hTextWnd1, hTextWnd2
    integer(HANDLE)   hInfo4
    type (PERWNDINFO)    Info, Info1, Info2
    integer*4   ret
    logical*4   lret
    integer(LONG) lData
    INTEGER*4   iData

    select case (message)       
        case (WM_COMMAND)
        ! Retrieve this child window's INFO data for displaying
        ! messages in the text window
            hInfo = GetWindowLong(hwnd, 0)
            if (hInfo .NE. 0) then
                pInfo = LocalLock(hInfo)
                if (pInfo == NULL) then
                    ret = MessageBox(ghwndMain,"Failed in LocalLock"C, &
                                    "Error"C, MB_OK)
                end if
                call CopyMemory(LOC(Info), pInfo, 44) ! SIZEOFINFO = 44
                hTextWnd = Info%hTextWnd
                lret = LocalUnlock(hInfo)
            else
                ret = MessageBox(ghwndMain, "Can't get hInfo!"C, &
                                    "Can't get hInfo!"C, MB_OK)
            end if

            select case ( IAND( wParam, 16#ffff ) )
                case (IDM_OPT_1)
                    lret = SetWindowText(hTextWnd, "IDM_OPT_1"C)
                    MDIWndProc = 0
                    return
            
                case (IDM_OPT_2)
                    lret = SetWindowText(hTextWnd, "IDM_OPT_2"C)
                    MDIWndProc = 0
                    return
            
                case (IDM_OPT_3)
                    lret = SetWindowText(hTextWnd, "IDM_OPT_3"C)
                    MDIWndProc = 0
                    return
            
                case (IDM_OPT_4)
                    lret = SetWindowText(hTextWnd, "IDM_OPT_4"C)
                    MDIWndProc = 0
                    return
            
                case DEFAULT
                    MDIWndProc = 0
                    return

            end select
          
  
        case (WM_SETFOCUS)

        ! Potentially, you can set different menu for different MDI
        ! child which is currently being active.
        case (WM_MDIACTIVATE)
            if (lParam == hwnd) then
                ret = SendMessage(GetParent(hwnd), WM_MDISETMENU,     &
                           ghChildMenu,                               &
                           ghChildMenuWindow) 
                ret = DrawMenuBar(GetParent(GetParent(hwnd))) 
            end if  
            MDIWndProc = 0
            return

        ! Whenever the MDI child window is resized, its children has to be
        ! resized accordingly.
        case (WM_SIZE)

        ! First, get the text window's handle from the per MDI child
        ! INFO data structure
            hInfo1 = GetWindowLong(hwnd, 0)
            if (hInfo1 .NE. 0)  then
                pInfo1 = LocalLock(hInfo1)
                if (pInfo1 == NULL) then
                    ret = MessageBox(ghwndMain,"Failed in LocalLock"C, &
                                    "Error"C, MB_OK)
                end if
                call CopyMemory(LOC(Info1), pInfo1, 44) ! SIZEOFINFO = 44

                hTextWnd1 = Info1%hTextWnd
                lret = LocalUnlock(hInfo1)
            else 
                ret = MessageBox(ghwndMain,"Can't get hInfo!"C,"Error"C, MB_OK)
            end if

            ! Always, put the text window at the bottom of the MDI window
            iData = lParam
            ret = MoveWindow(hTextWnd1,                               &
                      0,                                              &
                      IAND(ISHFT(iData, -16), 16#ffff) -             &
                        GetWindowLong(hTextWnd1, GWL_USERDATA),       &
                      IAND(iData, 16#ffff),                          &
                      IAND(ISHFT(iData, -16), 16#ffff),              &
                      TRUE)

        ! Creates the text window for this MDI child and saves its handle
        ! in the per MDI child INFO data structure.
        case (WM_CREATE)

            hTextWnd2 = CreateWindowEx(0,                             &
                            "WinHelloText"C, ""C,                     &
                            IOR (WS_BORDER, IOR(SS_LEFT,              &
                            IOR(WS_CHILD, WS_VISIBLE))),              &
                            0, 0, 0, 0,                               &
                            hwnd,                                     &
                            2_HANDLE,                                 &
                            ghModule,                                 &
                            NULL)
        
            ret = SetWindowText(hTextWnd2,"Select 'Option' menu items"C)

            ! INFO was allocated in the MDIWndProc at IDM_NEW time and is
            ! passed to us at WM_CREATE time...
            hInfo2 = SetHandle (lParam)
            if (hInfo2 .NE. 0 )  then
                pInfo2 = LocalLock(hInfo2)
                if (pInfo2 == NULL) then
                    ret = MessageBox(ghwndMain,                       &
                                    "Failed in LocalLock"C,           &
                                    "Error"C, MB_OK)
                end if
                call CopyMemory(LOC(Info2), pInfo2, 44) ! SIZEOFINFO = 44
                Info2%hTextWnd = hTextWnd2
            
                if (GetClientRect(hwnd, Info2%rcClient) .EQV. FALSE) &
                                                        then
                    ret = MessageBox(ghwndMain,                       &
                                    "Failed in GetClientRect!"C,      &
                                    "Error"C, MB_OK)
                end if
                call Copymemory(pInfo2, LOC(Info2), 44) ! SIZEOFINFO = 44
                ! Save the handle to INFO in our window structure
                lData = hInfo2
                ret = SetWindowLong(hwnd, 0, lData)
                ret = LocalUnlock(hInfo2)
            else
                ret = MessageBox(ghwndMain,"Can't allocate hInfo!"C,"Error"C, MB_OK)
            end if

        !  Free the INFO data that associates with this window
        !  also, reset the menu.
        case (WM_CLOSE)
        

            ret = SendMessage(GetParent(hwnd), WM_MDISETMENU,         &
                                         ghMenu,                      &
                                         ghMenuWindow) 
            ret = DrawMenuBar(GetParent(GetParent(hwnd))) 
            hInfo4 = GetWindowLong(hwnd, 0)
            ret = LocalFree(hInfo4)

        case DEFAULT
            MDIWndProc =DefMDIChildProc(hwnd, message, wParam, lParam)
            return

    end select
    MDIWndProc = DefMDIChildProc(hwnd, message, wParam, lParam)
    return
end

!****************************************************************************
!
!  FUNCTION: TextWndProc ( hWnd, mesg, wParam, lParam )
!
!  PURPOSE:  Processes messages for text child of MDI child windows
!
!  COMMENTS:
!
!****************************************************************************

integer*4  function TextWndProc (hwnd, message, wParam, lParam)
!DEC$ IF DEFINED(_X86_)
!DEC$ ATTRIBUTES STDCALL, ALIAS : '_TextWndProc@16' :: TextWndProc
!DEC$ ELSE
!DEC$ ATTRIBUTES STDCALL, ALIAS : 'TextWndProc' :: TextWndProc
!DEC$ ENDIF

    use user32
    use gdi32,  setbkcolor=>msfwin$setbkcolor, &
                settextcolor=>msfwin$settextcolor
    use ifwbase
    use WinHelloGlobals

    implicit none

    integer(HANDLE)   hwnd
    integer(UINT)   message
    integer(UINT_PTR)   wParam
    integer(LONG_PTR)   lParam

    ! Variables

    integer(HANDLE) hFont
    type (T_PAINTSTRUCT)        ps
    type (T_RECT)               rc
    character*128               ach
    integer*4                   len, nxBorder, nyBorder
    integer(HANDLE)                   hOldFont
    type (T_LOGFONT)            lf
    integer(HANDLE)                   hDC
    integer(HANDLE)                   hOldFont1
    type (T_TEXTMETRIC)         tm
    type (T_RECT)               rects
    integer                     lHeight
    integer*4                   ret

    SAVE    hFont, hOldFont
    data hFont  /NULL/, hOldFont /NULL/

    select case (message)

        case (WM_CREATE)

            ret = SystemParametersInfo(SPI_GETICONTITLELOGFONT,       &
                        SIZEOFLF, LOC(lf), FALSE)

            hDC = GetDC(hwnd)
            ! This is the height for 8 point size font in pixels
            lf%lfHeight = 8 * GetDeviceCaps(hDC, LOGPIXELSY) / 72

            hFont = CreateFontIndirect(lf)
            hOldFont1 = SelectObject(hDC, hFont)
            ret = GetTextMetrics(hDC, tm)
            ret = GetClientRect(GetParent(hwnd), rects)

            ! Base the height of the window on size of text
            lHeight = tm%tmHeight+6*GetSystemMetrics(SM_CYBORDER)+2
            ! Save the height for later reference
            ret = SetWindowLong(hwnd, GWL_USERDATA, lHeight)
            ret = SetWindowPos(hwnd, NULL,                            &
                   0,                                                 &
                   rects%bottom-lHeight,                              &
                   rects%right-rects%left,                            &
                   lHeight,                                           &
                   IOR(SWP_NOZORDER, SWP_NOMOVE))                     

            ret = ReleaseDC(hwnd, hDC)

    
        case (WM_DESTROY)
            if (hFont .NE. 0) then
                ret = DeleteObject(hFont)
            end if

        case (WM_SETTEXT)
            ret = DefWindowProc(hwnd, message, wParam, lParam)
            ret = InvalidateRect(hwnd, NULL_RECT, FALSE)
            ret = UpdateWindow(hwnd)
            TextWndProc = 0
            return

        case (WM_PAINT)

            ret = BeginPaint(hwnd, ps)

            ret = GetClientRect(hwnd, rc)

            nxBorder = GetSystemMetrics(SM_CXBORDER)
            rc%left  = rc%left + 9*nxBorder
            rc%right = rc%right - 9*nxBorder

            nyBorder = GetSystemMetrics(SM_CYBORDER)
            rc%top    = rc%top + 3*nyBorder
            rc%bottom = rc%bottom - 3*nyBorder

            ! 3D Text
            len = GetWindowText(hwnd, ach, SIZEOFACH)
            ret = SetBkColor(ps%hdc, GetSysColor(COLOR_BTNFACE))

            ret = SetBkMode(ps%hdc, TRANSPARENT)
            ret = SetTextColor(ps%hdc, Rgbx(64,96,96))
            if (hFont .NE. 0) then
                hOldFont = SelectObject(ps%hdc, hFont)
            end if
            ret = ExtTextOut(ps%hdc, rc%left+2*nxBorder+2, rc%top+2,  &
                                IOR(ETO_OPAQUE , ETO_CLIPPED),        &
                                rc, ach, len, NULL)

            ret = SetTextColor(ps%hdc, Rgbx(128,128,128))
            if (hFont .NE. 0) then
                hOldFont = SelectObject(ps%hdc, hFont)
            end if

            ret = ExtTextOut(ps%hdc, rc%left+2*nxBorder+1, rc%top+1,  &
             ETO_CLIPPED, rc, ach, len, NULL)

            ret = SetTextColor(ps%hdc, Rgbx(255,255,255))
            if (hFont .NE. 0) then
                hOldFont = SelectObject(ps%hdc, hFont)
            end if

            ret = ExtTextOut(ps%hdc, rc%left+2*nxBorder, rc%top,      &
                            ETO_CLIPPED, rc, ach, len, NULL)

            ret = SetBkMode(ps%hdc, OPAQUE)

            if (hOldFont .NE. 0) then
                ret = SelectObject(ps%hdc, hOldFont)
            end if

            ret = EndPaint(hwnd, ps)
            TextWndProc = 0
            return
    end select
    TextWndProc = DefWindowProc(hwnd, message, wParam, lParam)
    return
end

!****************************************************************************
!
!  FUNCTION: CenterWindow (HWND, HWND)
!
!  PURPOSE:  Center one window over another
!
!  COMMENTS: Dialog boxes take on the screen position that they were designed
!            at, which is not always appropriate. Centering the dialog over a
!            particular window usually results in a better position.
!
!****************************************************************************

subroutine CenterWindow (hwndChild, hwndParent)

    use user32
    use gdi32 
    use WinHelloGlobals

    implicit none

    integer(HANDLE)         hwndChild, hwndParent

    include 'resource.fd'

    ! Variables
    type (T_RECT)   rChild, rParent
    integer         wChild, hChild, wParent, hParent
    integer         wScreen, hScreen, xNew, yNew
    integer(HANDLE)         hdc
    integer*4       retval

    ! Get the Height and Width of the child window
       retval = GetWindowRect (hwndChild, rChild)
       wChild = rChild.right - rChild.left
       hChild = rChild.bottom - rChild.top

    ! Get the Height and Width of the parent window
       retval = GetWindowRect (hwndParent, rParent)
       wParent = rParent.right - rParent.left
       hParent = rParent.bottom - rParent.top

    ! Get the display limits
       hdc = GetDC (hwndChild)
       wScreen = GetDeviceCaps (hdc, HORZRES)
       hScreen = GetDeviceCaps (hdc, VERTRES)
       retval = ReleaseDC (hwndChild, hdc)

    ! Calculate new X position, then adjust for screen
       xNew = rParent.left + ((wParent - wChild) /2)
       if (xNew .LT. 0) then
          xNew = 0
       else if ((xNew+wChild) .GT. wScreen) then
          xNew = wScreen - wChild
       end if

    ! Calculate new Y position, then adjust for screen
       yNew = rParent.top  + ((hParent - hChild) /2)
       if (yNew .LT. 0) then
          yNew = 0
       else if ((yNew+hChild) .GT. hScreen) then
          yNew = hScreen - hChild
       end if

    ! Set it, and return
       retval = SetWindowPos (hwndChild, NULL, xNew, yNew, 0, 0,      &
                      IOR(SWP_NOSIZE , SWP_NOZORDER))
end  

 
!/****************************************************************************
!
!  FUNCTION: AboutDlgProc(HWND, UINT, WPARAM, LPARAM)
!
!  PURPOSE:  Processes messages for "About" dialog box
!
!  COMMENTS: Display version information from the version section of the
!            application resource.  Wait for user to click on "Ok" button,
!            then close the dialog box.
!
!****************************************************************************/

function AboutDlgProc( hDlg, message, uParam, lParam )
!DEC$ IF DEFINED(_X86_)
!DEC$ ATTRIBUTES STDCALL, ALIAS : '_AboutDlgProc@16' :: AboutDlgProc
!DEC$ ELSE
!DEC$ ATTRIBUTES STDCALL, ALIAS : 'AboutDlgProc' :: AboutDlgProc
!DEC$ ENDIF

    use kernel32
    use user32
    use gdi32
    use ifwbase
    use version
    use WinHelloGlobals

    implicit none

    integer(LRESULT) :: AboutDlgProc ! LRESULT
    integer(HANDLE)     hDlg        ! window handle of the dialog box
    integer(UINT)   message
    integer(UINT_PTR)   uParam
    integer(LONG_PTR)   lParam

    include 'resource.fd'

    ! Variables
    integer(HANDLE)   hfontDlg
    save        hfontDlg

    integer     dwVerHnd
    integer(DWORD)     dwVerInfoSize
    integer(SIZE_T)    sVerInfoSize
    integer     uVersionLen
    integer     bRetCode
    integer     i
    character*1024   szFullPath
    character*1024    szResult
    character*1024   szGetName
    integer(LPVOID)  lpVersion

    integer(LPVOID)   lpstrVffInfo
    integer(HANDLE)   hMem
    integer*4   iData
    integer*4   ret

    select case (message)
      case (WM_INITDIALOG)   ! message: initialize dialog box
         ! Create a font to use
         hfontDlg = CreateFont(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,& 
                        IOR(INT(VARIABLE_PITCH) , INT(FF_SWISS)), ""C)

         ! Center the dialog over the application window
         call CenterWindow (hDlg, GetWindow (hDlg, GW_OWNER))

         ! Get version information from the application
         ret = GetModuleFileName (ghInstance, szFullPath,     &
                               len(szFullPath))
         dwVerInfoSize = GetFileVersionInfoSize(szFullPath,   &
                                       LOC(dwVerHnd))

         if (dwVerInfoSize .NE. 0) then
            ! If we were able to get the information, process it:
            sVerInfoSize = dwVerInfoSize
            hMem = GlobalAlloc(GMEM_MOVEABLE, sVerInfoSize)
            lpstrVffInfo  = GlobalLock(hMem)
            ret = GetFileVersionInfo (szFullPath, dwVerHnd, &
            dwVerInfoSize, lpstrVffInfo)

            ! Walk through the dialog items that we want to replace:
            do i = IDC_VER1, IDC_VER5
               ret = GetDlgItemText(hDlg, i, szResult,      &     
                             len(szResult))
                
               szGetName = "\\StringFileInfo\\040904E4\\"C               
               ret =lstrcat(szGetName,szResult)

               bRetCode = VerQueryValue(lpstrVffInfo,    &
                                            szGetName,  &
                                            lpVersion,  &
                                            LOC(uVersionLen))

               if ( bRetCode .NE. 0 ) then
                  ! Replace dialog item text with version info
                  ret = lstrcpyn(LOC(szResult),lpVersion, uVersionLen)
                  ret = SetDlgItemText(hDlg, i,szResult)
                  ret = SendMessage (GetDlgItem (hDlg, i),   &
                                   WM_SETFONT, hfontDlg, TRUE)
               end if
            end do 

            ret = GlobalUnlock(hMem)
            ret = GlobalFree(hMem)
         end if 
         AboutDlgProc = 1
         return
      case (WM_COMMAND)                      ! message: received a command
         iData = uParam
         if ((IAND(iData,16#ffff) .EQ. IDOK) & !OK Selected?
            .OR. (IAND(iData,16#ffff) .EQ. IDCANCEL)) then ! Close command?
            ret = EndDialog(hDlg, TRUE)      ! Exit the dialog
            ret = DeleteObject (hfontDlg)
            AboutDlgProc = 1
            return
         end if
    end select  
    AboutDlgProc = 0 ! Didn't process the message
    return
end 

