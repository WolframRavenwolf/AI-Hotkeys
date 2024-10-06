;;;;;;;;;;;;;;;;;;
; AI-Hotkeys.ahk ; Version 1.2.0.20241006 - Copyright (C) 2024 Wolfram Ravenwolf
;;;;;;;;;;;;;;;;;;

; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <https://www.gnu.org/licenses/>.

#MaxMem 4095
#NoEnv
#SingleInstance Force
#Warn

SendMode Input

global Language := GetLanguage()



; ==============================================================================
; English Variables
; ==============================================================================

; ------------------------------------------------------------------------------
; Default (English) Tasks and Writing Instructions
; ------------------------------------------------------------------------------

global A0 := "Answer"
global A1 := "Compose an answer to the following text"
global A2 := "Answer in my name. Maintain the language and level of formality. Write only the answer, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global AF := "writing"

global B0 := "Calculate/Convert"
global B1 := "Calculate/Convert and explain"
global B2 := ""
global BF := ""

global C0 := "Check correctness"
global C1 := "Check the correctness and justify your assessment"
global C2 := ""
global CF := ""

global D0 := "Define"
global D1 := "Define"
global D2 := ""
global DF := ""

global E0 := "Explain"
global E1 := "Explain simply and in an easily understandable way"
global E2 := ""
global EF := ""

global F0 := "Formulate better"
global F1 := "Formulate the following text better"
global F2 := "Improve grammar, spelling, style, tone, and comprehensibility. Maintain the language and level of formality. Write only the improved version, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global FF := "writing"

global G0 := "Check grammar, spelling, etc."
global G1 := "Check grammar, spelling, style, tone, and comprehensibility of the following text"
global G2 := "Provide specific suggestions for improvement and explain them to me. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global GF := "writing"

global Q0 := "Query"
global Q1 := ""
global Q2 := ""
global QF := ""

global R0 := "Research"
global R1 := "Research the following topic"
global R2 := ""
global RF := ""

global S0 := "Summarize"
global S1 := "Summarize"
global S2 := ""
global SF := ""

global T0 := "Translate"
global T1 := "Translate the following text to or from English"
global T2 := "Provide only the translated text. Maintain the original formatting and structure. Translate between English and German unless another language is specifically requested."
global TF := "writing"

global V0 := "Clarify/Simplify"
global V1 := "Clarify and simplify the following text linguistically"
global V2 := "Write only the clarified and simplified version, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global VF := "writing"

global W0 := "What is"
global W1 := "What is"
global W2 := ""
global WF := ""

global X0 := "Reject"
global X1 := "Compose a negative response/rejection to the following text"
global X2 := "Answer in my name. Maintain the language and level of formality. Write only the rejection, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global XF := "writing"

global YorZ := "Z"

global Z0 := "Accept"
global Z1 := "Compose an affirmative response/acceptance to the following text"
global Z2 := "Answer in my name. Maintain the language and level of formality. Write only the acceptance, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global ZF := "writing"

global PREFIX := ""
global SUFFIX := ""

; ------------------------------------------------------------------------------
; Default (English) URLs
; ------------------------------------------------------------------------------

global URL_PERPLEXITY := "https://www.perplexity.ai/"
global URL_DICTIONARY := "https://www.merriam-webster.com/"
global URL_DICTIONARY_SEARCH := "https://www.merriam-webster.com/dictionary/"
global URL_GOOGLE := "https://www.google.com/"
global URL_GOOGLE_SEARCH := "https://www.google.com/search?q="
global URL_TRANSLATOR := "https://www.deepl.com/"
global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/translator#auto/auto/"
global URL_WIKIPEDIA := "https://en.wikipedia.org/"
global URL_WIKIPEDIA_SEARCH := "https://en.wikipedia.org/w/index.php?search="



; ==============================================================================
; German Variables
; ==============================================================================

if (Language = "de") {

    ;MsgBox, Default (German) Variables

; ------------------------------------------------------------------------------
; Default (German) Tasks and Writing Instructions
; ------------------------------------------------------------------------------

global A0 := "Antwort"
global A1 := "Verfasse eine Antwort auf folgenden Text"
global A2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Antwort, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global AF := "writing"

global B0 := "Berechnen/Konvertieren"
global B1 := "Berechne/Konvertiere und erkläre"
global B2 := ""
global BF := ""

global C0 := "Richtigkeit prüfen"
global C1 := "Prüfe die Richtigkeit und begründe deine Einschätzung"
global C2 := ""
global CF := ""

global D0 := "Definieren"
global D1 := "Definiere"
global D2 := ""
global DF := ""

global E0 := "Erklären"
global E1 := "Erkläre einfach und leicht verständlich"
global E2 := ""
global EF := ""

global F0 := "Formulieren verbessern"
global F1 := "Formuliere folgenden Text besser"
global F2 := "Verbessere Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die verbesserte Fassung, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global FF := "writing"

global G0 := "Grammatik, Rechtschreibung etc. prüfen"
global G1 := "Prüfe Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit des folgenden Textes"
global G2 := "Gib mir konkrete Verbesserungsvorschläge und erläutere sie mir. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global GF := "writing"

global Q0 := "Anfrage"
global Q1 := ""
global Q2 := ""
global QF := ""

global R0 := "Recherchieren"
global R1 := "Recherchiere zu folgendem Thema"
global R2 := ""
global RF := ""

global S0 := "Zusammenfassen"
global S1 := "Fasse zusammen"
global S2 := ""
global SF := ""

global T0 := "Übersetzen"
global T1 := "Übersetze den folgenden Text ins Deutsche oder aus dem Deutschen"
global T2 := "Liefere nur die Übersetzung. Behalte die ursprüngliche Formatierung und Struktur bei. ÜBERSETZE ZWISCHEN DEUTSCH UND ENGLISCH, ES SEI DENN, EINE ANDERE SPRACHE WIRD AUSDRÜCKLICH GEWÜNSCHT."
global TF := "writing"

global V0 := "Verdeutlichen/Vereinfachen"
global V1 := "Verdeutliche und vereinfache folgenden Text sprachlich"
global V2 := "Schreibe nur die verdeutlichte und vereinfachte Fassung, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global VF := "writing"

global W0 := "Was ist"
global W1 := "Was ist"
global W2 := ""
global WF := ""

global X0 := "Absagen"
global X1 := "Verfasse eine verneinende/ablehnende Antwort/Absage auf folgenden Text"
global X2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Absage, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global XF := "writing"

global YorZ := "Y"

global Y0 := "Zusagen"
global Y1 := "Verfasse eine bejahende/zustimmende Antwort/Zusage auf folgenden Text"
global Y2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Zusage, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global YF := "writing"

global PREFIX := ""
global SUFFIX := ""

; ------------------------------------------------------------------------------
; Default (German) URLs
; ------------------------------------------------------------------------------

global URL_PERPLEXITY := "https://www.perplexity.ai/"
global URL_DICTIONARY := "https://www.duden.de/"
global URL_DICTIONARY_SEARCH := "https://www.duden.de/suchen/dudenonline/"
global URL_GOOGLE := "https://www.google.de/"
global URL_GOOGLE_SEARCH := "https://www.google.de/search?q="
global URL_TRANSLATOR := "https://www.deepl.com/"
global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/translator#auto/auto/"
global URL_WIKIPEDIA := "https://de.wikipedia.org/"
global URL_WIKIPEDIA_SEARCH := "https://de.wikipedia.org/w/index.php?search="

}



; ==============================================================================
; Default Settings
; ==============================================================================

global CapsLockHotkeys := true
global ClipboardEditor := true
global Pro := true

; ------------------------------------------------------------------------------
; Load custom variables if an INI file exists in My Documents or in Script Dir
; ------------------------------------------------------------------------------

LoadCustomVariables()

; ------------------------------------------------------------------------------
; Win Hotkeys
; ------------------------------------------------------------------------------

if (WinHotkey_Perplexity) {
    Hotkey, #%WinHotkey_Perplexity%, Perplexity_Hotkey ; Win+Q (by default)
}
if (WinHotkey_Dictionary) {
    Hotkey, #%WinHotkey_Dictionary%, Dictionary_Hotkey ; Win+B (by default)
}
if (WinHotkey_Google) {
    Hotkey, #%WinHotkey_Google%, Google_Hotkey ; Win+G (by default) ⚠️ Remove Game Bar: Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
}
if (WinHotkey_Translator) {
    Hotkey, #%WinHotkey_Translator%, Translator_Hotkey ; Win+T (by default)
}
if (WinHotkey_Wikipedia) {
    Hotkey, #%WinHotkey_Wikipedia%, Wikipedia_Hotkey ; Win+W (by default)
}



; ==============================================================================
; Functions
; ==============================================================================

; ------------------------------------------------------------------------------
; Get Language
; ------------------------------------------------------------------------------

GetLanguage() {
    SetFormat, Integer, Hex
    langID := DllCall("GetSystemDefaultUILanguage", "UInt")
    SetFormat, Integer, D

    Language := "" ; Default (English)
    if (langID = 0x0407 or langID = 0x0c07 or langID = 0x0807) ; German (Germany, Austria, Switzerland)
        Language := "de" ; German
    ;else if (langID = 0x0409 or langID = 0x0809) ; English (United States, United Kingdom)
    ;    Language := "en"
    ; ...

    ;MsgBox, Language: %Language%

    return Language
}

; ------------------------------------------------------------------------------
; Get INI File
; ------------------------------------------------------------------------------

GetIniFile() {
    if (Language) {
        iniFileName := "AI-Hotkeys-" . Language . ".ini"
    } else {
        iniFileName := "AI-Hotkeys.ini"
    }

    iniPaths := []
    iniPaths.Push(A_MyDocuments . "\" . iniFileName)
    iniPaths.Push(A_MyDocuments . "\AI-Hotkeys.ini")
    iniPaths.Push(A_ScriptDir . "\" . iniFileName)
    iniPaths.Push(A_ScriptDir . "\AI-Hotkeys.ini")

    Loop, % iniPaths.MaxIndex() {
        if (FileExist(iniPaths[A_Index])) {
            return iniPaths[A_Index]
        }
    }
    return ""
}

; ------------------------------------------------------------------------------
; Load Custom Variables
; ------------------------------------------------------------------------------

LoadCustomVariables() {
    global

    local iniFile := GetIniFile()

    if (!iniFile) {
        return
    }

    ;MsgBox, iniFile: %iniFile%

    local key, value, parts

    FileRead, fileContent, %iniFile%
    Loop, Parse, fileContent, `n, `r
    {
        if (A_LoopField != "" && !RegExMatch(A_LoopField, "^\[.*\]$"))
        {
            StringSplit, parts, A_LoopField, =, %A_Space%%A_Tab%
            if (parts0 == 2)
            {
                key := parts1
                value := parts2
                if (value = "0" || value = "false")
                    %key% := false
                else
                    %key% := value
            }
        }
    }
}

; ------------------------------------------------------------------------------
; URL Encode
; ------------------------------------------------------------------------------

UrlEncode(str) {
    old := A_FormatInteger
    SetFormat, Integer, Hex

    VarSetCapacity(var, StrPut(str, "UTF-8"), 0)
    StrPut(str, &var, "UTF-8")

    encoded := ""

    Loop
    {
        code := NumGet(var, A_Index - 1, "UChar")
        if (!code)
            break
        if (code >= 0x30 && code <= 0x39 ; 0-9
            || code >= 0x41 && code <= 0x5A ; A-Z
            || code >= 0x61 && code <= 0x7A ; a-z
            || code = 0x2D ; -
            || code = 0x2E ; .
            || code = 0x5F ; _
            || code = 0x7E) ; ~
            encoded .= Chr(code)
        else
            encoded .= "%" . SubStr(code + 0x100, -1)
    }

    SetFormat, Integer, %old%
    return encoded
}

; ------------------------------------------------------------------------------
; AI (Perplexity)
; ------------------------------------------------------------------------------

AI(Task := "", Instructions := "", Focus := "")
{
    url := URL_PERPLEXITY

    ClipboardOld := ClipboardAll
    Clipboard := ""
    Send, ^c
    ClipWait, 0.5
    if (ErrorLevel)
        Clipboard := ClipboardOld

    if (Clipboard)
    {
        prompt := ""

        if (PREFIX != "")
            prompt .= PREFIX . "`n`n"

        if (Task)
        {
            prompt .= Task . ":`n`n"
            if (Instructions)
                prompt .= "<text>`n"
            prompt .= Clipboard
            if (Instructions)
                prompt .= "`n</text>`n`n" . Instructions
        }
        else
            prompt .= Clipboard

        if (SUFFIX != "")
            prompt .= "`n`n" . SUFFIX

        url .= "search?"

        if (Focus != "")
            url .= "focus=" . Focus . "&"

        if (Pro = "1" || Pro = "true" || (Pro = "auto" && Focus != "writing"))
            url .= "pro=true&"

        url .= "q=" . UrlEncode(prompt)
    }

    Clipboard := ClipboardOld

    if (StrLen(url) > 16384) {
        MsgBox, 48, 414 Request-URI Too Large, % StrLen(url) . " > 16384"
    } else {
        Run, % url
    }

    return
}

; ------------------------------------------------------------------------------
; Perplexity
; ------------------------------------------------------------------------------

Perplexity()
{
    Run, % URL_PERPLEXITY
    Sleep, 1000
    WinWait, Perplexity
    WinActivate
    return
}

; ------------------------------------------------------------------------------
; Search (Wikipedia+URL=Web)
; ------------------------------------------------------------------------------

Search(Engine)
{
    ClipboardOld := ClipboardAll
    Clipboard := ""
    Send, ^c
    ClipWait, 0.5
    if (ErrorLevel)
        Clipboard := ClipboardOld

    baseUrl := "URL_" . Format("{:U}", Engine)
    searchUrl := "URL_" . Format("{:U}", Engine) . "_SEARCH"

    if (Clipboard)
    {
        if (Engine = "Wikipedia" && RegExMatch(Clipboard, "i)^(https?://|www\.)"))
            Run, % Clipboard
        else
            Run, % %searchUrl% . UrlEncode(Clipboard)
    }
    else
        Run, % %baseUrl%

    Clipboard := ClipboardOld
    return
}



; ==============================================================================
; CapsLock Hotkeys
; ==============================================================================

#If (CapsLockHotkeys)

; ----------------------------------------------------------------------------------------------------
; CapsLock Behavior
; ----------------------------------------------------------------------------------------------------

; ⚠️ AutoHotkey executes the auto-execute section of the script first.
; This auto-execute section runs until it hits a return, hotkey, or hotstring.
; Move the hotkeys to the very bottom of the script, after any other code.

; Disable the default CapsLock behavior
SetCapsLockState, AlwaysOff

; Use Ctrl+CapsLock to toggle CapsLock
^SC03A::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "AlwaysOff" : "AlwaysOn"

; ------------------------------------------------------------------------------
; AI (Perplexity)
; ------------------------------------------------------------------------------

SC03A & a::AI(A1, A2, AF)
SC03A & b::AI(B1, B2, BF)
SC03A & c::AI(C1, C2, CF)
SC03A & d::AI(D1, D2, DF)
SC03A & e::AI(E1, E2, EF)
SC03A & f::AI(F1, F2, FF)
SC03A & g::AI(G1, G2, GF)
SC03A & q::AI(Q1, Q2, QF)
SC03A & r::AI(R1, R2, RF)
SC03A & s::AI(S1, S2, SF)
SC03A & t::AI(T1, T2, TF)
SC03A & v::AI(V1, V2, VF)
SC03A & w::AI(W1, W2, WF)
SC03A & x::AI(X1, X2, XF)
#If (CapsLockHotkeys and YorZ = "Y")
SC03A & y::AI(Y1, Y2, YF)
#If (CapsLockHotkeys and YorZ = "Z")
SC03A & z::AI(Z1, Z2, ZF)

#If



; ==============================================================================
; Win Hotkeys
; ==============================================================================

; ------------------------------------------------------------------------------
; Perplexity
; ------------------------------------------------------------------------------

Perplexity_Hotkey:
    Perplexity()
return

; ------------------------------------------------------------------------------
; Screenshot / OCR
; ------------------------------------------------------------------------------

; Win+Ctrl+Q = Screenshot (Greenshot/Snipping Tool) <- Win+Shift+S
;#^q::Send {PrintScreen}

; Win+Shift+Q = OCR (Capture2Text/PowerToys: Text Extractor) <- Win+Shift+T
;#+q::return

; ------------------------------------------------------------------------------
; Search (Wikipedia+URL=Web)
; ------------------------------------------------------------------------------

Dictionary_Hotkey:
    Search("Dictionary")
return

Google_Hotkey:
    Search("Google")
return

Translator_Hotkey:
    Search("Translator")
return

Wikipedia_Hotkey:
    Search("Wikipedia")
return



; ==============================================================================
; Clipboard Editor (Alt+LWin / Win+LAlt)
; ==============================================================================

#If (ClipboardEditor)

#InstallKeybdHook
#UseHook

UseDarkTheme() {
    try {
        RegRead, AppsUseLightTheme, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme
        return (AppsUseLightTheme == 0)
    } catch {
        return false ; Default to false if unable to read the registry
    }
}

!LWin::
#LAlt::
    IfWinExist AI-Hotkeys Clipboard Editor
    {
        Gui, Submit, NoHide
        Gui, Destroy
        return
    }
    ClipboardBackup := ClipboardAll
    if UseDarkTheme() { ; Dark theme colors
        Gui, Color, 1E1E1E, 333333 ; Set dark background and control colors
        Gui, Font, cSilver, Segoe UI ; Set light text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
        ; Force dark mode on the entire window
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 19, "Int*", 1, "Int", 4)
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 20, "Int*", 1, "Int", 4)
    } else { ; Light theme colors
        Gui, Color, FFFFFF, F0F0F0 ; Set light background and control colors
        Gui, Font, cBlack, Segoe UI ; Set dark text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
    }
    Gui, Add, Edit, hwndClipboardEdit vClipboard w620 h340, %Clipboard%
    Loop, 15 {
        ButtonLetter := SubStr("QWERTASDFG" . YorZ . "XCVB", A_Index, 1)
        Gui, Add, Button, hwnd%ButtonLetter%Btn g%ButtonLetter%Action Left, % " &" . ButtonLetter . ": " . %ButtonLetter%0
    }
    Gui, Add, Button, hwndSaveBtn gSaveClipboard, ✔️ Save (LWin+LAlt)
    Gui, Add, Button, hwndClearBtn gClearClipboard, 🧹 Clear (Alt+Del)
    Gui, Add, Button, hwndRestoreBtn gRestoreClipboard, 🔄 Restore (Alt+Ins)
    Gui, Add, Button, hwndExitBtn gGuiClose, ❌ Exit (Esc)
    Gui, +Resize
    Gui, Show, w640 h480, AI-Hotkeys Clipboard Editor
    OnMessage(0x0005, "GuiSize") ; WM_SIZE message

    ; Center window on active monitor
    MouseGetPos, MouseX, MouseY
    SysGet, MonitorCount, MonitorCount
    Loop, %MonitorCount%
    {
        SysGet, Monitor, Monitor, %A_Index%
        if (MouseX >= MonitorLeft && MouseX <= MonitorRight && MouseY >= MonitorTop && MouseY <= MonitorBottom)
        {
            WinGetPos,,, Width, Height, AI-Hotkeys Clipboard Editor
            WinMove, AI-Hotkeys Clipboard Editor,, MonitorLeft + (MonitorRight - MonitorLeft - Width) // 2, MonitorTop + (MonitorBottom - MonitorTop - Height) // 2
            break
        }
    }
return

GuiSize:
    ;MsgBox, GuiSize
    if (A_EventInfo == 1) ; The window has been minimized. No action needed.
        return
    NewWidth := A_GuiWidth - 20
    NewHeight := A_GuiHeight - 140 ; Adjusted to account for action button rows
    GuiControl, Move, %ClipboardEdit%, w%NewWidth% h%NewHeight%

    ; Calculate positions for the AI action button rows
    RowY1 := A_GuiHeight - 123
    RowY2 := RowY1 + 30
    RowY3 := RowY2 + 30

    ; Move AI action buttons
    Margin := 10
    ButtonSpacing := 7
    TotalButtonWidth := A_GuiWidth - (2 * Margin) - (4 * ButtonSpacing)
    ButtonWidth := TotalButtonWidth // 5 ; Divide available width by 5 for each button
    Loop, 5 {
        ButtonX := Margin + (A_Index - 1) * (ButtonWidth + ButtonSpacing)
        ButtonLetter1 := SubStr("QWERT", A_Index, 1)
        ButtonLetter2 := SubStr("ASDFG", A_Index, 1)
        ButtonLetter3 := SubStr(YorZ . "XCVB", A_Index, 1)
        GuiControl, Move, % %ButtonLetter1%Btn, x%ButtonX% y%RowY1% w%ButtonWidth%
        GuiControl, Move, % %ButtonLetter2%Btn, x%ButtonX% y%RowY2% w%ButtonWidth%
        GuiControl, Move, % %ButtonLetter3%Btn, x%ButtonX% y%RowY3% w%ButtonWidth%
    }

    ; Calculate position for the main action button row
    ButtonY := A_GuiHeight - 33

    ; Move main action buttons
    Margin := 10
    ButtonSpacing := 7
    TotalButtonWidth := A_GuiWidth - (2 * Margin) - (3 * ButtonSpacing)
    ButtonWidth := TotalButtonWidth // 4 ; Divide available width by 5 for each button
    ButtonX := Margin + 0 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %SaveBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 1 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %ClearBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 2 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %RestoreBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 3 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %ExitBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
return

SaveClipboard:
    Gui, Submit, NoHide
    Gui, Destroy
return

ClearClipboard:
    GuiControl,, %ClipboardEdit%
return

RestoreClipboard:
    GuiControl,, %ClipboardEdit%, %Clipboard%
    ControlSend, , ^a, ahk_id %ClipboardEdit%
return

GuiClose:
    Gui, Destroy
    Clipboard := ClipboardBackup
return

; AI action functions for the AI action buttons
QAction:
AAction:
BAction:
CAction:
DAction:
EAction:
FAction:
GAction:
RAction:
SAction:
TAction:
VAction:
WAction:
XAction:
YAction:
ZAction:
    Gui, Submit, NoHide
    action := SubStr(A_ThisLabel, 1, 1)
    AI(%action%1, %action%2, %action%F)
    Gui, Destroy
return

#IfWinActive, AI-Hotkeys Clipboard Editor

; Save
!Enter:: ; Alt+Enter
    Gosub, SaveClipboard
return

; Clear
!Delete:: ; Alt+Del
    Gosub, ClearClipboard
return

; Restore
!Insert:: ; Alt+Ins
    Gosub, RestoreClipboard
return

; Exit
Esc:: ; Esc
    Gosub, GuiClose
return

; Query (Perplexity)
^Enter:: ; Ctrl+Enter
    Gosub, QAction
return

#IfWinActive

#If
