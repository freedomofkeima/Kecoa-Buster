VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7440
   ClientLeft      =   19335
   ClientTop       =   1365
   ClientWidth     =   10230
   ControlBox      =   0   'False
   Icon            =   "Genshiken.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7440
   ScaleWidth      =   10230
   Begin VB.Timer Timer5 
      Interval        =   1000
      Left            =   240
      Top             =   3600
   End
   Begin VB.Timer Timer4 
      Left            =   240
      Top             =   2880
   End
   Begin VB.Timer Timer3 
      Interval        =   400
      Left            =   240
      Top             =   2160
   End
   Begin VB.Timer Timer2 
      Left            =   240
      Top             =   1440
   End
   Begin VB.Timer Timer1 
      Interval        =   40
      Left            =   240
      Top             =   720
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Profil Anggota : Klik di masing-masing nama"
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   120
      TabIndex        =   13
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "KELUAR"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   630
      Left            =   9000
      TabIndex        =   12
      Top             =   1440
      Width           =   1215
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   495
      Left            =   -1000
      TabIndex        =   11
      Top             =   3120
      Width           =   495
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   873
      _cy             =   873
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Take Your Own Destiny And Beat The Enemy!"
      BeginProperty Font 
         Name            =   "MadokaMusical"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFFF&
      Height          =   375
      Left            =   -9000
      TabIndex        =   10
      Top             =   7440
      Width           =   9135
   End
   Begin VB.Image Image2 
      Height          =   1500
      Left            =   720
      Picture         =   "Genshiken.frx":058A
      Top             =   8040
      Width           =   1500
   End
   Begin VB.Image Image1 
      Height          =   600
      Left            =   360
      Picture         =   "Genshiken.frx":6976
      Top             =   8040
      Width           =   2250
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Yodi Pramudito"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   9
      Top             =   6600
      Width           =   4215
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Winson Waisakurnia"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   8
      Top             =   5880
      Width           =   4215
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Pandu Kartika Putra"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   7
      Top             =   5160
      Width           =   4215
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Muhamad Ihsan"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   6
      Top             =   4440
      Width           =   4215
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Iskandar Setiadi"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   5
      Top             =   3720
      Width           =   4215
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Harris Maulana"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   4
      Top             =   3000
      Width           =   4215
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Aldy Wirawan"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   3
      Top             =   2280
      Width           =   4215
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Aldo Fadhila"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   2
      Top             =   1560
      Width           =   4215
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "MULAI"
      BeginProperty Font 
         Name            =   "Book Antiqua"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   630
      Left            =   11000
      TabIndex        =   1
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Presented to you by : "
      BeginProperty Font 
         Name            =   "Freehand521 BT"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   10500
      TabIndex        =   0
      Top             =   480
      Width           =   4215
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C000C0&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00C000C0&
      FillColor       =   &H0000FFFF&
      Height          =   9000
      Left            =   8880
      Top             =   -9000
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Created by freedomofkeima
Option Explicit
Dim g_nTransparency As Integer
Dim interval As Integer
Dim warna As Long

'Jangan mengedit section ini
'-------------------------------------------------------------------------------

Private Declare Function SetWindowLong Lib "user32" _
   Alias "SetWindowLongA" _
   (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function GetWindowLong Lib "user32" _
   Alias "GetWindowLongA" _
   (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Const GWL_STYLE = (-16)
Private Const WS_CAPTION = &HC00000
Private Const WS_MAXIMIZEBOX = &H10000
Private Const WS_MINIMIZEBOX = &H20000
Private Const WS_SYSMENU = &H80000

Private Declare Function SetWindowPos Lib "user32" _
      (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, _
      ByVal x As Long, ByVal Y As Long, _
      ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Enum ESetWindowPosStyles
    SWP_SHOWWINDOW = &H40
    SWP_HIDEWINDOW = &H80
    SWP_FRAMECHANGED = &H20
    SWP_NOACTIVATE = &H10
    SWP_NOCOPYBITS = &H100
    SWP_NOMOVE = &H2
    SWP_NOOWNERZORDER = &H200
    SWP_NOREDRAW = &H8
    SWP_NOREPOSITION = SWP_NOOWNERZORDER
    SWP_NOSIZE = &H1
    SWP_NOZORDER = &H4
    SWP_DRAWFRAME = SWP_FRAMECHANGED
    HWND_NOTOPMOST = -2
End Enum

Private Declare Function GetWindowRect Lib "user32" ( _
      ByVal hwnd As Long, lpRect As RECT) As Long
Private Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type

 
 Private Declare Function ShellExecute Lib "shell32.dll" Alias _
      "ShellExecuteA" (ByVal hwnd As Long, ByVal lpszOp As _
      String, ByVal lpszFile As String, ByVal lpszParams As String, _
      ByVal lpszDir As String, ByVal FsShowCmd As Long) As Long

      Private Declare Function GetDesktopWindow Lib "user32" () As Long

      Const SW_SHOWNORMAL = 1

Private Function ShowTitleBar(ByVal bState As Boolean)
Dim lStyle As Long
Dim tR As RECT

   GetWindowRect Me.hwnd, tR

   lStyle = GetWindowLong(Me.hwnd, GWL_STYLE)
   If (bState) Then
      Me.Caption = Me.Tag
      If Me.ControlBox Then
         lStyle = lStyle Or WS_SYSMENU
      End If
      If Me.MaxButton Then
         lStyle = lStyle Or WS_MAXIMIZEBOX
      End If
      If Me.MinButton Then
         lStyle = lStyle Or WS_MINIMIZEBOX
      End If
      If Me.Caption <> "" Then
         lStyle = lStyle Or WS_CAPTION
      End If
   Else
      Me.Tag = Me.Caption
      Me.Caption = ""
      lStyle = lStyle And Not WS_SYSMENU
      lStyle = lStyle And Not WS_MAXIMIZEBOX
      lStyle = lStyle And Not WS_MINIMIZEBOX
      lStyle = lStyle And Not WS_CAPTION
   End If
   SetWindowLong Me.hwnd, GWL_STYLE, lStyle
   SetWindowPos Me.hwnd, _
       0, tR.Left, tR.Top, _
       tR.Right - tR.Left, tR.Bottom - tR.Top, _
       SWP_NOREPOSITION Or SWP_NOZORDER Or SWP_FRAMECHANGED

   Me.Refresh

End Function

  Function StartDoc(DocName As String) As Long
          Dim Scr_hDC As Long
          Scr_hDC = GetDesktopWindow()
          StartDoc = ShellExecute(Scr_hDC, "Open", DocName, _
          "", App.Path, SW_SHOWNORMAL)
      End Function
'-------------------------------------------------------------------------------

Private Sub StartGame()
'Meng-kill semua operasi yang berjalan
Timer1.interval = 0
Timer2.interval = 0
Timer3.interval = 0
WindowsMediaPlayer1.URL = ""
WindowsMediaPlayer1.Close
StartDoc ("Genshiken.swf")
End
End Sub


Private Sub Form_Load()
'Inisialisasi variabel
warna = 0
interval = 0
Label2.ForeColor = vbYellow
WindowsMediaPlayer1.URL = App.Path & "\01.mp3"
WindowsMediaPlayer1.settings.volume = 100
WindowsMediaPlayer1.settings.playCount = 1000
ShowTitleBar False
End Sub

Private Sub Label10_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/dragseal", vbHide)
End Sub

Private Sub Label12_Click()
Timer1.interval = 0
Timer2.interval = 0
Timer3.interval = 0
WindowsMediaPlayer1.URL = ""
WindowsMediaPlayer1.Close
End
End Sub

Private Sub Label2_Click()
 StartGame
End Sub


Private Sub Label3_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/aldo.fadhila", vbHide)
End Sub

Private Sub Label4_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/wirawan.aldy", vbHide)
End Sub

Private Sub Label5_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/ikyfy", vbHide)
End Sub

Private Sub Label6_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/iskandarsetiadi", vbHide)
End Sub

Private Sub Label7_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/MuhamadIhsanwxz", vbHide)
End Sub

Private Sub Label8_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/panduputra", vbHide)
End Sub

Private Sub Label9_Click()
Call Shell("c:\program files\internet explorer\iexplore.exe https://www.facebook.com/winson.waisakurnia", vbHide)
End Sub

Private Sub Timer1_Timer()
'Menggerakan form dari kanan ke kiri
If Form1.Left > 3555 Then
Form1.Left = Form1.Left - 1000
End If

On Error GoTo ErrorRtn
'Mengeset transparansi awal
g_nTransparency = g_nTransparency + 7

If g_nTransparency > 238 Then
g_nTransparency = g_nTransparency - 7
Timer1.interval = 0
Timer2.interval = 40
End If

 SetTranslucent Me.hwnd, g_nTransparency
    Exit Sub
ErrorRtn:
    MsgBox Err.Description & " Source : " & Err.Source
End Sub

Private Sub Timer2_Timer()
'Pergerakan tombol Skip

If (Label1.Left > 3000) Then
Label1.Left = Label1.Left - 200
End If

If (Label1.Left <= 6000) And (Image2.Top > 2920) Then
Image2.Top = Image2.Top - 120
End If

If (Label1.Left <= 5000) And (Label2.Left > 9120) Then
Label2.Left = Label2.Left - 200
End If

If (Image2.Top <= 2920) And (Image1.Top > 4960) Then
Image1.Top = Image1.Top - 120
End If

If (Image1.Top <= 4960) And (Label11.Left < 0) Then
Label11.Left = Label11.Left + 360
End If

If (Label1.Left <= 6000) And (Label3.Left > 2800) Then
Label3.Left = Label3.Left - 300
End If

If (Label3.Left <= 7000) And (Label4.Left > 2800) Then
Label4.Left = Label4.Left - 300
End If

If (Label4.Left <= 7000) And (Label5.Left > 2800) Then
Label5.Left = Label5.Left - 300
End If

If (Label5.Left <= 7000) And (Label6.Left > 2800) Then
Label6.Left = Label6.Left - 300
End If

If (Label6.Left <= 7000) And (Label7.Left > 2800) Then
Label7.Left = Label7.Left - 300
End If

If (Label7.Left <= 7000) And (Label8.Left > 2800) Then
Label8.Left = Label8.Left - 300
End If

If (Label8.Left <= 7000) And (Label9.Left > 2800) Then
Label9.Left = Label9.Left - 300
End If

If (Label9.Left <= 7000) And (Label10.Left > 2800) Then
Label10.Left = Label10.Left - 300
End If

If (Label10.Left <= 2800) And (Shape1.Top < -120) Then
Shape1.Top = Shape1.Top + 360
Timer4.interval = 240
End If

If Shape1.Top >= -120 Then
Timer2.interval = 0
End If

'If (Label10.Left <= 2800) Then
'interval = interval + 1
'End If

'Jika ingin dimulai secara otomatis
'If interval >= 10 Then
'StartGame
'End If
End Sub

Private Sub Timer3_Timer()
If Label2.ForeColor = vbYellow Then
Label2.ForeColor = vbGreen
Else
Label2.ForeColor = vbYellow
End If
End Sub

Private Sub Timer4_Timer()
If (warna Mod 16 = 0) Then Label3.ForeColor = vbYellow
If (warna Mod 16 = 1) Then Label4.ForeColor = vbYellow
If (warna Mod 16 = 2) Then Label5.ForeColor = vbYellow
If (warna Mod 16 = 3) Then Label6.ForeColor = vbYellow
If (warna Mod 16 = 4) Then Label7.ForeColor = vbYellow
If (warna Mod 16 = 5) Then Label8.ForeColor = vbYellow
If (warna Mod 16 = 6) Then Label9.ForeColor = vbYellow
If (warna Mod 16 = 7) Then Label10.ForeColor = vbYellow
If (warna Mod 16 = 8) Then Label10.ForeColor = vbWhite
If (warna Mod 16 = 9) Then Label9.ForeColor = vbWhite
If (warna Mod 16 = 10) Then Label8.ForeColor = vbWhite
If (warna Mod 16 = 11) Then Label7.ForeColor = vbWhite
If (warna Mod 16 = 12) Then Label6.ForeColor = vbWhite
If (warna Mod 16 = 13) Then Label5.ForeColor = vbWhite
If (warna Mod 16 = 14) Then Label4.ForeColor = vbWhite
If (warna Mod 16 = 15) Then Label3.ForeColor = vbWhite
warna = warna + 1
End Sub
