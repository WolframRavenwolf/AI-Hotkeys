;;;;;;;;;;;;;;;;;;
; AI-Hotkeys.ahk ; Version 1.1.0.20240922 - Copyright (C) 2024 Wolfram Ravenwolf
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
#SingleInstance Ignore
#Warn

SendMode Input

global Language := GetLanguage()



; ==============================================================================
; English Variables
; ==============================================================================

; ------------------------------------------------------------------------------
; Default (English) Tasks and Writing Instructions
; ------------------------------------------------------------------------------

global ANSWER1 := "Compose an answer to the following text"
global ANSWER2 := "Answer in my name. Maintain the language and level of formality. Write only the answer, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global CALCULATE_CONVERT := "Calculate/Convert and explain"
global CHECK_CORRECTNESS := "Check the correctness and justify your assessment"
global DEFINE := "Define"
global EXPLAIN := "Explain simply and in an easily understandable way"
global FORMULATE_BETTER1 := "Formulate the following text better"
global FORMULATE_BETTER2 := "Improve grammar, spelling, style, tone, and comprehensibility. Maintain the language and level of formality. Write only the improved version, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global CHECK_GRAMMAR1 := "Check grammar, spelling, style, tone, and comprehensibility of the following text"
global CHECK_GRAMMAR2 := "Provide specific suggestions for improvement and explain them to me. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global RESEARCH := "Research the following topic"
global SUMMARIZE := "Summarize"
global TRANSLATE1 := "Translate the following text to or from English"
global TRANSLATE2 := "Provide only the translated text. Maintain the original formatting and structure. Translate between English and German unless another language is specifically requested."
global CLARIFY_SIMPLIFY1 := "Clarify and simplify the following text linguistically"
global CLARIFY_SIMPLIFY2 := "Write only the clarified and simplified version, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global WHAT_IS := "What is"
global REJECT1 := "Compose a negative response/rejection to the following text"
global REJECT2 := "Answer in my name. Maintain the language and level of formality. Write only the rejection, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
global ACCEPT1 := "Compose an affirmative response/acceptance to the following text"
global ACCEPT2 := "Answer in my name. Maintain the language and level of formality. Write only the acceptance, nothing else. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)!"
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

global ANSWER1 := "Verfasse eine Antwort auf folgenden Text"
global ANSWER2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Antwort, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global CALCULATE_CONVERT := "Berechne/Konvertiere und erkläre"
global CHECK_CORRECTNESS := "Prüfe die Richtigkeit und begründe deine Einschätzung"
global DEFINE := "Definiere"
global EXPLAIN := "Erkläre einfach und leicht verständlich"
global FORMULATE_BETTER1 := "Formuliere folgenden Text besser"
global FORMULATE_BETTER2 := "Verbessere Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die verbesserte Fassung, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global CHECK_GRAMMAR1 := "Prüfe Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit des folgenden Textes"
global CHECK_GRAMMAR2 := "Gib mir konkrete Verbesserungsvorschläge und erläutere sie mir. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global RESEARCH := "Recherchiere zu folgendem Thema"
global SUMMARIZE := "Fasse zusammen"
global TRANSLATE1 := "Übersetze den folgenden Text ins Deutsche oder aus dem Deutschen"
global TRANSLATE2 := "Liefere nur die Übersetzung. Behalte die ursprüngliche Formatierung und Struktur bei. ÜBERSETZE ZWISCHEN DEUTSCH UND ENGLISCH, ES SEI DENN, EINE ANDERE SPRACHE WIRD AUSDRÜCKLICH GEWÜNSCHT."
global CLARIFY_SIMPLIFY1 := "Verdeutliche und vereinfache folgenden Text sprachlich"
global CLARIFY_SIMPLIFY2 := "Schreibe nur die verdeutlichte und vereinfachte Fassung, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global WHAT_IS := "Was ist"
global REJECT1 := "Verfasse eine verneinende/ablehnende Antwort/Absage auf folgenden Text"
global REJECT2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Absage, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
global ACCEPT1 := "Verfasse eine bejahende/zustimmende Antwort/Zusage auf folgenden Text"
global ACCEPT2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Zusage, sonst nichts. BEHALTE DIE ORIGINAL-SPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI!"
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
global WinHotkeys := true
global ClipboardEditor := true
global Pro := true

; ------------------------------------------------------------------------------
; Load custom variables if an INI file exists in My Documents or in Script Dir
; ------------------------------------------------------------------------------

LoadCustomVariables()



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

AI(Task := "", WritingInstructions := "")
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
            if (WritingInstructions)
                prompt .= "<text>`n"
            prompt .= Clipboard
            if (WritingInstructions)
                prompt .= "`n</text>`n`n" . WritingInstructions
        }
        else
            prompt .= Clipboard

        if (SUFFIX != "")
            prompt .= "`n`n" . SUFFIX

        url .= "search?"

        if (WritingInstructions)
            url .= "focus=writing&"

        if (Pro = "1" || Pro = "true" || (Pro = "auto" && WritingInstructions = ""))
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

; CapsLock+A: Answer = (Verfasse eine) Antwort
SC03A & a::AI(ANSWER1, ANSWER2)

; CapsLock+B: Calculate/Convert = Berechne/Konvertiere
SC03A & b::AI(CALCULATE_CONVERT)

; CapsLock+C: Check correctness = Prüfe Richtigkeit
SC03A & c::AI(CHECK_CORRECTNESS)

; CapsLock+D: Define = Definiere
SC03A & d::AI(DEFINE)

; CapsLock+E: Explain = Erkläre
SC03A & e::AI(EXPLAIN)

; CapsLock+F: Formulate better = Formuliere besser
SC03A & f::AI(FORMULATE_BETTER1, FORMULATE_BETTER2)

; CapsLock+G: Check grammar, spelling, etc. = Prüfe Grammatik, Rechtschreibung usw.
SC03A & g::AI(CHECK_GRAMMAR1, CHECK_GRAMMAR2)

; CapsLock+Q: Query = Anfrage
SC03A & q::AI()

; CapsLock+R: Research = Recherchiere
SC03A & r::AI(RESEARCH)

; CapsLock+S: Summarize = Fasse zusammen
SC03A & s::AI(SUMMARIZE)

; CapsLock+T: Translate = Übersetze
SC03A & t::AI(TRANSLATE1, TRANSLATE2)

; CapsLock+V: Clarify/Simplify = Verdeutliche/Vereinfache
SC03A & v::AI(CLARIFY_SIMPLIFY1, CLARIFY_SIMPLIFY2)

; CapsLock+W: What is = Was ist
SC03A & w::AI(WHAT_IS)

; CapsLock+X: Reject = (Verfasse eine) Absage
SC03A & x::AI(REJECT1, REJECT2)

; CapsLock+Y/Z: Accept = (Verfasse eine) Zusage
SC03A & y::AI(ACCEPT1, ACCEPT2)
SC03A & z::AI(ACCEPT1, ACCEPT2)

#If



; ==============================================================================
; Win Hotkeys
; ==============================================================================

#If (WinHotkeys)

; ------------------------------------------------------------------------------
; Perplexity
; ------------------------------------------------------------------------------

; Win+Q = Perplexity
#q::Perplexity()

; Win+Ctrl+Q = Screenshot (Greenshot/Snipping Tool) <- Win+Shift+S
#^q::Send {PrintScreen}

; Win+Shift+Q = OCR (Capture2Text/PowerToys: Text Extractor) <- Win+Shift+T
;#+q::return

; ------------------------------------------------------------------------------
; Search (Wikipedia+URL=Web)
; ------------------------------------------------------------------------------

; Win+B = Dictionary
#b::Search("Dictionary")

; Win+G = Google -> ⚠️ Remove Game Bar: Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
#g::Search("Google")

; Win+T = Translator
#t::Search("Translator")

; Win+W = URL=Web / Wikipedia
#w::Search("Wikipedia")

#If



; ==============================================================================
; Clipboard Editor
; ==============================================================================

#If (ClipboardEditor)

; ------------------------------------------------------------------------------
; Alt+LWin / Win+LAlt = Clipboard Editor
; ------------------------------------------------------------------------------

; A dialog box will appear with the current clipboard contents
; Modify the text as desired and press Save
; The modified text will be saved back to the clipboard

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
    IfWinExist Clipboard Editor
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
    Gui, Add, Edit, hwndClipboardEdit r2 vClipboard, %Clipboard%
    Gui, Add, Button, hwndSaveBtn Default gSaveClipboard, ✔️ &Save
    Gui, Add, Button, hwndClearBtn x+7 gClearClipboard, 🧹 &Clear
    Gui, Add, Button, hwndRestoreBtn x+7 gRestoreClipboard, 🔄 &Restore
    Gui, Add, Button, hwndExitBtn x+7 gGuiClose, ❌ &Exit
    Gui, Add, Button, hwndQueryBtn x+51 gQueryPerplexity, 🧠 &Query (Perplexity)
    Gui, Add, Button, hwndTranslateBtn x+7 gTranslateDeepL, 🌐 &Translate (DeepL)
    Gui, +Resize
    Gui, Show, w640 h360, Clipboard Editor
    OnMessage(0x0005, "GuiSize") ; WM_SIZE message
    MouseGetPos, MouseX, MouseY
    SysGet, MonitorCount, MonitorCount
    Loop, %MonitorCount%
    {
        SysGet, Monitor, Monitor, %A_Index%
        if (MouseX >= MonitorLeft && MouseX <= MonitorRight && MouseY >= MonitorTop && MouseY <= MonitorBottom)
        {
            WinMove, Clipboard Editor, , MonitorLeft + (MonitorRight - MonitorLeft - 640) // 2, MonitorTop + (MonitorBottom - MonitorTop - 360) // 2
            break
        }
    }
return

GuiClose:
    Gui, Destroy
    Clipboard := ClipboardBackup
return

GuiSize:
    if (A_EventInfo == 1) ; The window has been minimized. No action needed.
        return
    NewWidth := A_GuiWidth - 20
    NewHeight := A_GuiHeight - 48
    GuiControl, Move, %ClipboardEdit%, W%NewWidth% H%NewHeight%
    ButtonX := A_GuiWidth - 246
    ButtonY := A_GuiHeight - 33
    GuiControl, Move, %SaveBtn%, y%ButtonY%
    GuiControl, Move, %ClearBtn%, y%ButtonY%
    GuiControl, Move, %RestoreBtn%, y%ButtonY%
    GuiControl, Move, %ExitBtn%, y%ButtonY%
    GuiControl, Move, %QueryBtn%, x%ButtonX% y%ButtonY%
    ButtonX := ButtonX + 122
    GuiControl, Move, %TranslateBtn%, x%ButtonX% y%ButtonY%
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

QueryPerplexity:
    Gosub, SaveClipboard
    Run, % "https://www.perplexity.ai/search?pro=true&q=" . UrlEncode(Clipboard)
return

TranslateDeepL:
    Gosub, SaveClipboard
    Run, % "https://www.deepl.com/translator#auto/auto/" . UrlEncode(Clipboard)
return

#IfWinActive, Clipboard Editor

; Save: Alt+S
!Enter:: ; Alt+Enter
    Gosub, SaveClipboard
return

; Clear: Alt+C
!Backspace:: ; Alt+Backspace
!Delete:: ; Alt+Del
    Gosub, ClearClipboard
return

; Restore: Alt+R
!Insert:: ; Alt+Ins
    Gosub, RestoreClipboard
return

; Exit: Alt+E
!x:: ; Alt+X
Esc:: ; Esc
    Gosub, GuiClose
return

; Query (Perplexity): Alt+Q
!p:: ; Alt+P
^Enter:: ; Ctrl+Enter
    Gosub, QueryPerplexity
return

; Translate (DeepL): Alt+T
!d:: ; Alt+D
    Gosub, TranslateDeepL
return

#IfWinActive

#If
