Attribute VB_Name = "Module2"
Option Explicit

Sub SetTranslucent(ThehWnd As Long, nTrans As Integer)
    On Error GoTo ErrorRtn

    'SetWindowLong and SetLayeredWindowAttributes are API functions, see MSDN for details
    Dim attrib As Long
    attrib = GetWindowLong(ThehWnd, GWL_EXSTYLE)
    SetWindowLong ThehWnd, GWL_EXSTYLE, attrib Or WS_EX_LAYERED
    SetLayeredWindowAttributes ThehWnd, RGB(255, 255, 0), nTrans, LWA_ALPHA
    Exit Sub
ErrorRtn:
    MsgBox Err.Description & " Source : " & Err.Source
    
End Sub



