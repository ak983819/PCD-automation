#NoEnv
#SingleInstance Force
SendMode Input
SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%

searchFile := "pcd_batchsearch.txt"

MAX_ELEMENTS := 8
TABS_PER_ELEMENT := 4

Sleep, 3000   ; time to focus PCD before starting

Loop, Read, %searchFile%
{
    line := Trim(A_LoopReadLine)
    if (line = "")
        continue

    ; ----------------------------
    ; Parse elements
    ; ----------------------------
    parts := StrSplit(line, "|")
    query := Trim(parts[1])
    elements := StrSplit(query, " AND ")
    used := elements.Length()

    ; ----------------------------
    ; Activate PCD
    ; ----------------------------
    WinActivate, Pearson's Crystal Data
    WinWaitActive, Pearson's Crystal Data,,10
    Sleep, 2000

    ; ----------------------------
    ; Open Selection Criteria
    ; ----------------------------
    Send, !s
    Sleep, 800
    Send, {Down}
    Sleep, 400
    Send, {Enter}
    Sleep, 2500

    ; ----------------------------
    ; Enter elements (fixed slots)
    ; ----------------------------
    Loop, %MAX_ELEMENTS%
    {
        idx := A_Index

        if (idx <= used)
        {
            Send, ^a
            Sleep, 120
            Send, {Backspace}
            Sleep, 120
            Send, % elements[idx]
            Sleep, 300
        }

        ; move to next element slot
        Send, {Tab %TABS_PER_ELEMENT%}
        Sleep, 300
    }

    ; ----------------------------
    ; Number of elements
    ; ----------------------------
    Send, %used%
    Sleep, 300

    ; ----------------------------
    ; Run search
    ; ----------------------------
    Send, {Enter}
    Sleep, 3000

    ; ----------------------------
    ; CONFIRM "New answer set"
    ; ----------------------------
    Sleep, 1500
    Send, {Enter}     ; presses OK
    Sleep, 2500

    ; =====================================================
    ; EXPORT ALL ENTRIES TO CIF (YOUR METHOD)
    ; =====================================================

    ; Alt+F (File)
    Send, !f
    Sleep, 800

    ; Navigate to Export
    Send, {Tab 7}
    Sleep, 800
    Send, {Enter}
    Sleep, 500

    ; Confirm Export dialog
    Send, {Enter}
    Sleep, 500

    ; Select "All entries of current answer set"
    Send, {Down 2}
    Sleep, 800

    ; Tab to OK
    Send, {Tab 4}
    Sleep, 500
    Send, {Enter}

    ; ----------------------------
    ; Wait for export to finish
    ; ----------------------------
    Sleep, 2500
}

MsgBox, DONE. All compositions exported to CIF.
ExitApp
