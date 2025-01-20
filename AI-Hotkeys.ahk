;;;;;;;;;;;;;;;;;;
; AI-Hotkeys.ahk ; Version 1.4.1.20250120 - Copyright (C) 2024 Wolfram Ravenwolf
;;;;;;;;;;;;;;;;;;

Version = 1.4.1.20250120 ; ^^^^^^^^^^^^^^

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
; Default (English) Tasks and Instructions
; ------------------------------------------------------------------------------

; X0 = Title
; X1 = Task
; X2 = Instructions
; X3 = Focus

; Primary Hotkeys

global A0 := "Answer"
global A1 := "Compose an answer to the following text (in its original language, without web search)"
global A2 := "Answer in my name. Maintain the language and level of formality. Write only the answer, nothing else, not even a greeting. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global A3 := "writing"

global B0 := "Calculate/Convert"
global B1 := "Calculate/Convert and explain"
global B2 := ""
global B3 := ""

global C0 := "Check correctness"
global C1 := "Check the correctness and justify your assessment"
global C2 := ""
global C3 := ""

global D0 := "Define"
global D1 := "Define"
global D2 := ""
global D3 := ""

global E0 := "Explain simply"
global E1 := "Explain simply and in an easily understandable way"
global E2 := ""
global E3 := ""

global F0 := "Formulate better"
global F1 := "Formulate the following text better (in its original language, without web search)"
global F2 := "Improve grammar, spelling, style, tone and comprehensibility while maintaining the original language and level of formality. Use active and direct, friendly and clear formulations instead of modal verbs in the subjunctive such as ""could"", ""should"" or ""would"". Write only the improved version, nothing else, not even a greeting. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global F3 := "writing"

global G0 := "Check grammar etc."
global G1 := "Check grammar, spelling, style, tone, and comprehensibility of the following text (without web search)"
global G2 := "Provide specific suggestions for improvement and explain them to me. Prefer active and direct, friendly and clear formulations instead of modal verbs in the subjunctive such as ""could"", ""should"" or ""would"". KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global G3 := "writing"

global Q0 := "Query Perplexity…"
global Q1 := ""
global Q2 := ""
global Q3 := ""

global R0 := "Research"
global R1 := "Research the following topic"
global R2 := ""
global R3 := ""

global S0 := "Summarize"
global S1 := "Summarize (without web search)"
global S2 := "WITHOUT WEB SEARCH!"
global S3 := "writing"

global T0 := "Translate"
global T1 := "Translate the following text to or from English (without web search)"
global T2 := "Write only the translation of the text enclosed in <text> tags, nothing else, not even a greeting. Maintain the original formatting and structure, except for the <text> tags. TRANSLATE BETWEEN GERMAN AND ENGLISH UNLESS ANOTHER LANGUAGE IS EXPLICITLY REQUESTED! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global T3 := "writing"

global V0 := "Clarify/Simplify"
global V1 := "Clarify and simplify the following text linguistically (in its original language, without web search)"
global V2 := "Write only the clarified and simplified version, nothing else, not even a greeting. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global V3 := "writing"

global W0 := "What is"
global W1 := "What is"
global W2 := ""
global W3 := ""

global X0 := "Reject"
global X1 := "Compose a negative response/rejection to the following text (in its original language, without web search)"
global X2 := "Answer in my name. Maintain the language and level of formality. Write only the rejection, nothing else, not even a greeting. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global X3 := "writing"

global YorZ := "Z"

global Z0 := "Accept"
global Z1 := "Compose an affirmative response/acceptance to the following text (in its original language, without web search)"
global Z2 := "Answer in my name. Maintain the language and level of formality. Write only the acceptance, nothing else, not even a greeting. KEEP THE ORIGINAL LANGUAGE OF THE TEXT (E.G. ENGLISH OR GERMAN)! WITHOUT WEB SEARCH, WITHOUT SOURCE CITATIONS!"
global Z3 := "writing"

; Secondary Hotkeys

global H0 := ""
global H1 := ""
global H2 := ""
global H3 := ""

global I0 := ""
global I1 := ""
global I2 := ""
global I3 := ""

global J0 := ""
global J1 := ""
global J2 := ""
global J3 := ""

global K0 := ""
global K1 := ""
global K2 := ""
global K3 := ""

global L0 := ""
global L1 := ""
global L2 := ""
global L3 := ""

global M0 := ""
global M1 := ""
global M2 := ""
global M3 := ""

global N0 := ""
global N1 := ""
global N2 := ""
global N3 := ""

global O0 := ""
global O1 := ""
global O2 := ""
global O3 := ""

global P0 := ""
global P1 := ""
global P2 := ""
global P3 := ""

global U0 := ""
global U1 := ""
global U2 := ""
global U3 := ""

global Y0 := ""
global Y1 := ""
global Y2 := ""
global Y3 := ""

; ------------------------------------------------------------------------------
; Default (English) URLs
; ------------------------------------------------------------------------------

global URL_PERPLEXITY := "https://www.perplexity.ai/"
global URL_DICTIONARY := "https://www.merriam-webster.com/"
global URL_DICTIONARY_SEARCH := "https://www.merriam-webster.com/dictionary/"
global URL_GOOGLE := "https://www.google.com/"
global URL_GOOGLE_SEARCH := "https://www.google.com/search?q="

; FIXME: Disabled DeepL due to OpenResty's inability to handle URL-encoded
; newlines (%0A) in request URLs, which results in 404 Not Found errors.
;global URL_TRANSLATOR := "https://www.deepl.com/"
;;global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/translator#auto/auto/"
;global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/en/translator/q/auto/%s/auto/"
; Falling back to Google Translate until this is fixed.
global URL_TRANSLATOR := "https://translate.google.com/"
;global URL_TRANSLATOR_SEARCH := "https://translate.google.com/#auto/auto/"
global URL_TRANSLATOR_SEARCH := "https://translate.google.com/?sl=auto&tl=auto&text=%s&op=translate"

global URL_WIKIPEDIA := "https://en.wikipedia.org/"
global URL_WIKIPEDIA_SEARCH := "https://en.wikipedia.org/w/index.php?search="

; ------------------------------------------------------------------------------
; English Button Captions
; ------------------------------------------------------------------------------

global CLOSE_BUTTON_CAPTION := "❌ Close (Esc)"
global CLEAR_BUTTON_CAPTION := "❎ Clear (Alt+Del)"
global RESTORE_BUTTON_CAPTION := "🔄 Restore (Alt+Ins)"
global SAVE_BUTTON_CAPTION := "✅ Save (Alt+Enter)"
global SEND_BUTTON_CAPTION := "✔️ Send (Ctrl+Enter)"



; ==============================================================================
; German Variables
; ==============================================================================

if (Language = "de") {

    ;MsgBox, German

; ------------------------------------------------------------------------------
; Default (German) Tasks and Instructions
; ------------------------------------------------------------------------------

; X0 = Titel
; X1 = Aufgabe
; X2 = Anweisungen
; X3 = Fokus

; Primary Hotkeys

global A0 := "Verfasse Antwort"
global A1 := "Verfasse eine Antwort auf folgenden Text (in seiner Originalsprache, ohne Websuche)"
global A2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Antwort, sonst nichts, auch keine Grußformel. BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global A3 := "writing"

global B0 := "Berechne/Konvertiere"
global B1 := "Berechne/Konvertiere und erkläre"
global B2 := ""
global B3 := ""

global C0 := "Prüfe Richtigkeit"
global C1 := "Prüfe die Richtigkeit und begründe deine Einschätzung"
global C2 := ""
global C3 := ""

global D0 := "Definiere"
global D1 := "Definiere"
global D2 := ""
global D3 := ""

global E0 := "Erkläre einfach"
global E1 := "Erkläre einfach und leicht verständlich"
global E2 := ""
global E3 := ""

global F0 := "Formuliere besser"
global F1 := "Formuliere folgenden Text besser (in seiner Originalsprache, ohne Websuche)"
global F2 := "Verbessere Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit unter Beibehaltung der ursprünglichen Sprache und des Formalitätsgrads. Verwende aktive und direkte, freundliche und klare Formulierungen anstelle von Modalverben im Konjunktiv wie ""könnte"", ""müsste"", ""sollte"" oder ""würde"". Schreibe nur die verbesserte Fassung, sonst nichts, auch keine Grußformel. BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global F3 := "writing"

global G0 := "Prüfe Grammatik usw."
global G1 := "Prüfe Grammatik, Rechtschreibung, Stil, Ton und Verständlichkeit des folgenden Textes (ohne Websuche)"
global G2 := "Gib mir konkrete Verbesserungsvorschläge und erläutere sie mir. Bevorzuge aktive und direkte, freundliche und klare Formulierungen anstelle von Modalverben im Konjunktiv wie ""könnte"", ""müsste"", ""sollte"" oder ""würde"". BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global G3 := "writing"

global Q0 := "Perplexity…"
global Q1 := ""
global Q2 := ""
global Q3 := ""

global R0 := "Recherchiere"
global R1 := "Recherchiere zu folgendem Thema"
global R2 := ""
global R3 := ""

global S0 := "Fasse zusammen"
global S1 := "Fasse zusammen (ohne Websuche)"
global S2 := "OHNE WEBSUCHE!"
global S3 := "writing"

global T0 := "Übersetze"
global T1 := "Übersetze den folgenden Text ins Deutsche oder aus dem Deutschen (ohne Websuche)"
global T2 := "Schreibe nur die Übersetzung des mit <text>-Tags umgebenen Texts, sonst nichts, auch keine Grußformel. Behalte die ursprüngliche Formatierung und Struktur bei, mit Ausnahme der <text>-Tags. ÜBERSETZE ZWISCHEN DEUTSCH UND ENGLISCH, ES SEI DENN, EINE ANDERE SPRACHE WIRD AUSDRÜCKLICH GEWÜNSCHT! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global T3 := "writing"

global V0 := "Verdeutliche/Vereinfache"
global V1 := "Verdeutliche und vereinfache folgenden Text sprachlich (in seiner Originalsprache, ohne Websuche)"
global V2 := "Schreibe nur die verdeutlichte und vereinfachte Fassung, sonst nichts, auch keine Grußformel. BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global V3 := "writing"

global W0 := "Was ist"
global W1 := "Was ist"
global W2 := ""
global W3 := ""

global X0 := "Verfasse Absage"
global X1 := "Verfasse eine verneinende/ablehnende Antwort/Absage auf folgenden Text (in seiner Originalsprache, ohne Websuche)"
global X2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Absage, sonst nichts, auch keine Grußformel. BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global X3 := "writing"

global YorZ := "Y"

global Y0 := "Verfasse Zusage"
global Y1 := "Verfasse eine bejahende/zustimmende Antwort/Zusage auf folgenden Text (in seiner Originalsprache, ohne Websuche)"
global Y2 := "Antworte in meinem Namen. Behalte Sprache und Formalitätsgrad bei. Schreibe nur die Zusage, sonst nichts, auch keine Grußformel. BEHALTE DIE ORIGINALSPRACHE DES TEXTS (Z. B. DEUTSCH ODER ENGLISCH) BEI! OHNE WEBSUCHE, OHNE QUELLENANGABEN!"
global Y3 := "writing"

; Secondary Hotkeys

global H0 := ""
global H1 := ""
global H2 := ""
global H3 := ""

global I0 := ""
global I1 := ""
global I2 := ""
global I3 := ""

global J0 := ""
global J1 := ""
global J2 := ""
global J3 := ""

global K0 := ""
global K1 := ""
global K2 := ""
global K3 := ""

global L0 := ""
global L1 := ""
global L2 := ""
global L3 := ""

global M0 := ""
global M1 := ""
global M2 := ""
global M3 := ""

global N0 := ""
global N1 := ""
global N2 := ""
global N3 := ""

global O0 := ""
global O1 := ""
global O2 := ""
global O3 := ""

global P0 := ""
global P1 := ""
global P2 := ""
global P3 := ""

global U0 := ""
global U1 := ""
global U2 := ""
global U3 := ""

global Z0 := ""
global Z1 := ""
global Z2 := ""
global Z3 := ""

; ------------------------------------------------------------------------------
; Default (German) URLs
; ------------------------------------------------------------------------------

global URL_PERPLEXITY := "https://www.perplexity.ai/"
global URL_DICTIONARY := "https://www.duden.de/"
global URL_DICTIONARY_SEARCH := "https://www.duden.de/suchen/dudenonline/"
global URL_GOOGLE := "https://www.google.de/"
global URL_GOOGLE_SEARCH := "https://www.google.de/search?q="

; FIXME: Disabled DeepL due to OpenResty's inability to handle URL-encoded
; newlines (%0A) in request URLs, which results in 404 Not Found errors.
;global URL_TRANSLATOR := "https://www.deepl.com/"
;;global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/translator#auto/auto/"
;global URL_TRANSLATOR_SEARCH := "https://www.deepl.com/de/translator/q/auto/%s/auto/"
; Falling back to Google Translate until this is fixed.
global URL_TRANSLATOR := "https://translate.google.de/"
;global URL_TRANSLATOR_SEARCH := "https://translate.google.de/#auto/auto/"
global URL_TRANSLATOR_SEARCH := "https://translate.google.de/?sl=auto&tl=auto&text=%s&op=translate"

global URL_WIKIPEDIA := "https://de.wikipedia.org/"
global URL_WIKIPEDIA_SEARCH := "https://de.wikipedia.org/w/index.php?search="

; ------------------------------------------------------------------------------
; German Button Captions
; ------------------------------------------------------------------------------

global CLOSE_BUTTON_CAPTION := "❌ Schließen (Esc)"
global CLEAR_BUTTON_CAPTION := "❎ Löschen (Alt+Entf)"
global RESTORE_BUTTON_CAPTION := "🔄 Wiederher. (Alt+Einfg)"
global SAVE_BUTTON_CAPTION := "✅ Speichern (Alt+Enter)"
global SEND_BUTTON_CAPTION := "✔️ Senden (Strg+Enter)"

}



; ==============================================================================
; Additional Variables, Default Settings and Win Hotkeys
; ==============================================================================

; Additional Variables

global PREFIX := ""
global SUFFIX := ""

; Default Settings

global CapsLockHotkeys     := true    ; AI (Perplexity) Hotkeys + CapsLock Hotkeys
global CapsLockOff         := true    ; Use CapsLock to disable CapsLock
global Debug               := false   ; Debug mode
global Pro                 := "auto"  ; Pro Search: auto = only for non-writing tasks, true = always, false = never
global QueryEditor         := "tray"  ; Query Editor: tray = keep in tray, true = keep in taskbar, false = off
global StartupHelp         := 5       ; Show help on startup: show for X seconds, 1 = keep open permanently, 0 = off
global UseDarkTheme        := "auto"  ; Theme: auto = system, true = dark, false = light

; Win Hotkeys

global WinHotkey_Perplexity := "Q"
global WinHotkey_Dictionary := "B"
global WinHotkey_Google     := "G"
global WinHotkey_Translator := "T"
global WinHotkey_Wikipedia  := "W"

; ------------------------------------------------------------------------------
; Load custom variables if an INI file exists in My Documents or in Script Dir
; ------------------------------------------------------------------------------

LoadCustomVariables()

; ------------------------------------------------------------------------------
; Win Hotkeys
; ------------------------------------------------------------------------------

if (WinHotkey_Perplexity) {
    Hotkey, #%WinHotkey_Perplexity%, Perplexity_Hotkey  ; Default: Win+Q
}
if (WinHotkey_Dictionary) {
    Hotkey, #%WinHotkey_Dictionary%, Dictionary_Hotkey  ; Default: Win+B
}
if (WinHotkey_Google) {
    Hotkey, #%WinHotkey_Google%, Google_Hotkey  ; Default: Win+G ⚠️ Remove Game Bar: Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage
}
if (WinHotkey_Translator) {
    Hotkey, #%WinHotkey_Translator%, Translator_Hotkey  ; Default: Win+T
}
if (WinHotkey_Wikipedia) {
    Hotkey, #%WinHotkey_Wikipedia%, Wikipedia_Hotkey  ; Default: Win+W
}

; ------------------------------------------------------------------------------
; Create Minimized Query Editor
; ------------------------------------------------------------------------------

if (QueryEditor && QueryEditor != "tray") {
        CreateQueryEditorGui()
}

; ------------------------------------------------------------------------------
; Show Startup Help
; ------------------------------------------------------------------------------

ShowStartupHelp()



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

    Language := ""  ; Default (English)
    if (langID = 0x0407 or langID = 0x0c07 or langID = 0x0807)  ; German (Germany, Austria, Switzerland)
        Language := "de"  ; German
    ;else if (langID = 0x0409 or langID = 0x0809)  ; English (United States, United Kingdom)
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

    local key, value, parts

    FileRead, fileContent, %iniFile%
    Loop, Parse, fileContent, `n, `r
    {
        ; Skip empty lines and comments (lines starting with ; or #)
        if (A_LoopField = "" || RegExMatch(A_LoopField, "^\s*[;#]"))
            continue

        ; Skip section headers [section]
        if (RegExMatch(A_LoopField, "^\[.*\]$"))
            continue

        StringSplit, parts, A_LoopField, =, %A_Space%%A_Tab%
        if (parts0 == 2)
        {
            key := parts1
            value := StrReplace(RegExReplace(parts2, "^""(.*)""$", "$1"), "\n", "`n")
            if (value = "0" || value = "false")
                %key% := false
            else if (value = "1" || value = "true")
                %key% := true
            else
                %key% := value
        }
    }

    if (Debug) {
        SetTimer, ChangeButtonNames, 50
        MsgBox, 68, AI-Hotkeys Debug, iniFile: %iniFile%
        SetTimer, ChangeButtonNames, Off
        IfMsgBox, Yes
            Clipboard := iniFile
    }
}

; ------------------------------------------------------------------------------
; Use Dark Theme
; ------------------------------------------------------------------------------

UseDarkTheme() {
    if (UseDarkTheme != "auto")
        return UseDarkTheme

    try {
        RegRead, AppsUseLightTheme, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme
        return (AppsUseLightTheme == 0)
    } catch {
        return false  ; Default to false if unable to read the registry
    }
}

; ------------------------------------------------------------------------------
; Help
; ------------------------------------------------------------------------------

Help()
{
    local letter

    HelpText := ""

    if (QueryEditor) {
    ; Query Editor Hotkeys
    HelpText .= "`nQuery Editor Hotkeys:`n"
    HelpText .= "LWin+LAlt = Query Editor`n"
    }

    if (CapsLockHotkeys) {
    ; AI (Perplexity) Hotkeys
    HelpText .= "`nAI (Perplexity) Hotkeys:`n"
    Loop, 26 {
        letter := Chr(A_Index + 64)  ; Convert to uppercase letter
        titleVar := letter . "0"
        if (%titleVar% != "") {
            HelpText .= "CapsLock+" . letter . " = " . %titleVar% . "`n"
        }
    }

    ; CapsLock Hotkeys
    HelpText .= "`nCapsLock Hotkeys:`n"
    HelpText .= "Ctrl+CapsLock = Toggle CapsLock`n"
    HelpText .= "CapsLock+F1 = Help`n"
    HelpText .= "CapsLock+F2 = Suspend Hotkeys`n"
    HelpText .= "CapsLock+F3 = Pause Script`n"
    HelpText .= "CapsLock+F4 = Exit`n"
    HelpText .= "CapsLock+F5 = Reload Script`n"
    HelpText .= "CapsLock+F12 = Edit Script`n"
    }

    ; Win Hotkeys
    if (WinHotkey_Perplexity || WinHotkey_Dictionary || WinHotkey_Google || WinHotkey_Translator || WinHotkey_Wikipedia) {
        HelpText .= "`nWin Hotkeys:`n"
        if (WinHotkey_Perplexity)
            HelpText .= "Win+" . Format("{:U}", WinHotkey_Perplexity) . " = Perplexity`n"
        if (WinHotkey_Dictionary)
            HelpText .= "Win+" . Format("{:U}", WinHotkey_Dictionary) . " = Dictionary`n"
        if (WinHotkey_Google)
            HelpText .= "Win+" . Format("{:U}", WinHotkey_Google) . " = Google`n"
        if (WinHotkey_Translator)
            HelpText .= "Win+" . Format("{:U}", WinHotkey_Translator) . " = Translator`n"
        if (WinHotkey_Wikipedia)
            HelpText .= "Win+" . Format("{:U}", WinHotkey_Wikipedia) . " = Wikipedia`n"
    }

    ; Settings
    if (Debug) {
        HelpText .= "`nSettings:`n"
        HelpText .= "CapsLockHotkeys = " . (CapsLockHotkeys = 1 ? "true" : CapsLockHotkeys = 0 ? "false" : CapsLockHotkeys) . "`n"
        HelpText .= "CapsLockOff = " . (CapsLockOff = 1 ? "true" : CapsLockOff = 0 ? "false" : CapsLockOff) . "`n"
        HelpText .= "Debug = " . (Debug = 1 ? "true" : Debug = 0 ? "false" : Debug) . "`n"
        HelpText .= "Pro = " . (Pro = 1 ? "true" : Pro = 0 ? "false" : Pro) . "`n"
        HelpText .= "QueryEditor = " . (QueryEditor = 1 ? "true" : QueryEditor = 0 ? "false" : QueryEditor) . "`n"
        HelpText .= "StartupHelp = " . (StartupHelp = 1 ? "true" : StartupHelp = 0 ? "false" : StartupHelp) . "`n"
        HelpText .= "UseDarkTheme = " . (UseDarkTheme = 1 ? "true" : UseDarkTheme = 0 ? "false" : UseDarkTheme) . "`n"
    }

    HelpText := Trim(HelpText, "`n")

    ; Calculate required height based on text content
    StringReplace, HelpText, HelpText, `n, `n, UseErrorLevel
    lineCount := ErrorLevel + 1  ; Number of lines (+1 because last line might not end with `n)
    lineHeight := 17  ; Approximate height per line in pixels
    padding := 10  ; Extra padding in pixels
    totalHeight := (lineCount * lineHeight) + padding

    ; Create GUI with custom buttons
    Gui, Help:New, +AlwaysOnTop

    if UseDarkTheme() {  ; Dark theme colors
        Gui, Color, 1E1E1E, 333333  ; Set dark background and control colors
        Gui, Font, cSilver, Segoe UI  ; Set light text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
        ; Force dark mode on the entire window
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 19, "Int*", 1, "Int", 4)
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 20, "Int*", 1, "Int", 4)
    } else {  ; Light theme colors
        Gui, Color, FFFFFF, F0F0F0  ; Set light background and control colors
        Gui, Font, cBlack, Segoe UI  ; Set dark text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
    }

    Gui, Font, s11 bold
    Gui, Add, Text, , AI-Hotkeys Version %Version%
    Gui, Font, s10 norm

    Gui, Help:Add, Edit, ReadOnly w250 h%totalHeight% vHelpText -VScroll +VScroll, %HelpText%
    Gui, Help:Add, Button, gCopyHelp w120 h30, ➡️ &Clipboard
    Gui, Help:Add, Button, x+10 gCloseHelp w120 h30 +Default, % CLOSE_BUTTON_CAPTION
    Gui, Help:Show,, AI-Hotkeys Help

    ; Set focus to the Close button to prevent text selection
    GuiControl, Focus, Button2

    return

    CopyHelp:
        GuiControlGet, HelpText,, HelpText
        Clipboard := HelpText
        return

    CloseHelp:
    HelpGuiClose:
    HelpGuiEscape:
        Gui, Help:Destroy
        return
}

; ------------------------------------------------------------------------------
; Show Startup Help
; ------------------------------------------------------------------------------

ShowStartupHelp() {
    global StartupHelp

    ; Skip if StartupHelp is 0
    if (StartupHelp <= 0)
        return

    ; Show help dialog
    Help()

    ; Keep help dialog open permanently if StartupHelp is 1
    if (StartupHelp = 1)
        return

    global startupHelpActive := true
    global remainingSeconds := StartupHelp

    ; Update the close button text every second
    SetTimer, UpdateCountdown, 1000
    return

    UpdateCountdown:
    if !startupHelpActive
        return

    if WinExist("AI-Hotkeys Help") {
        MouseGetPos,,, mouseWin
        WinGet, activeWin, ID, AI-Hotkeys Help

        ; Check if window was manually triggered by hotkey
        if (A_ThisHotkey = "SC03A & F1") {
            SetTimer, UpdateCountdown, Off
            ControlSetText, Button2, % CLOSE_BUTTON_CAPTION, AI-Hotkeys Help
            startupHelpActive := false
            return
        }

        ; Check for mouse interaction
        if (mouseWin = activeWin) {
            SetTimer, UpdateCountdown, Off
            ControlSetText, Button2, % CLOSE_BUTTON_CAPTION, AI-Hotkeys Help
            startupHelpActive := false
            return
        }

        if (remainingSeconds > 0) {
            ControlSetText, Button2, % RegExReplace(CLOSE_BUTTON_CAPTION, "\(.*\)$") "(" remainingSeconds ")", AI-Hotkeys Help
            remainingSeconds--
        } else {
            WinClose, AI-Hotkeys Help
            SetTimer, UpdateCountdown, Off
            startupHelpActive := false
        }
    } else {
        SetTimer, UpdateCountdown, Off
        startupHelpActive := false
    }
    return
}

; ------------------------------------------------------------------------------
; Get Selected Or Clipboard Text
; ------------------------------------------------------------------------------

GetSelectedOrClipboardText() {
    ClipboardOld := ClipboardAll
    Clipboard := ""
    Send, ^c
    ClipWait, 0.5
    if (ErrorLevel)
        Clipboard := ClipboardOld
    text := Clipboard
    Clipboard := ClipboardOld
    ClipboardOld := ""
    return text
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
        if (code >= 0x30 && code <= 0x39  ; 0-9
            || code >= 0x41 && code <= 0x5A  ; A-Z
            || code >= 0x61 && code <= 0x7A  ; a-z
            || code = 0x2D  ; -
            || code = 0x2E  ; .
            || code = 0x5F  ; _
            || code = 0x7E)  ; ~
            encoded .= Chr(code)
        else
            encoded .= "%" . SubStr(code + 0x100, -1)
    }

    SetFormat, Integer, %old%
    return encoded
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
; AI (Perplexity)
; ------------------------------------------------------------------------------

AI(hotkey := "", query := "")
{
    if (Debug) {
        MsgBox, 64, AI-Hotkeys Debug, hotkey: %hotkey%
    }

    url := URL_PERPLEXITY

    task := ""
    instructions := ""
    focus := ""

    if (hotkey != "")
    {
        task := %hotkey%1
        instructions := %hotkey%2
        focus := %hotkey%3
    }

    if (query == "")
        query := GetSelectedOrClipboardText()

    if (query != "")
    {
        prompt := ""

        if (PREFIX != "")
            prompt .= PREFIX

        if (task != "")
        {
            prompt .= task . ":`n`n"
            if (instructions != "")
                prompt .= "<text>`n"
            prompt .= query
            if (instructions != "")
                prompt .= "`n</text>`n`n" . instructions
        }
        else
            prompt .= query

        if (SUFFIX != "")
            prompt .= SUFFIX

        if (Debug) {
            SetTimer, ChangeButtonNames, 50
            MsgBox, 68, AI-Hotkeys Debug, prompt: %prompt%
            SetTimer, ChangeButtonNames, Off
            IfMsgBox, Yes
                Clipboard := prompt
        }

        url .= "search?"

        if (focus != "")
            url .= "focus=" . focus . "&"

        if (Pro && !(Pro = "auto" && focus = "writing"))
            url .= "pro=true&"

        url .= "q=" . UrlEncode(prompt)
    }

    if (Debug) {
        SetTimer, ChangeButtonNames, 50
        MsgBox, 68, AI-Hotkeys Debug, url: %url%
        SetTimer, ChangeButtonNames, Off
        IfMsgBox, Yes
            Clipboard := url
    }

    if (StrLen(url) > 16384) {
        if (Debug) {
            MsgBox, 48, 414 Request-URI Too Large, % StrLen(url) . " > 16384"
        }

        Perplexity()
        ClipboardOld := ClipboardAll
        Clipboard := prompt
        Sleep, 1000
        Send, ^v
        Sleep, 1000
        Clipboard := ClipboardOld
        ClipboardOld := ""
        Send, .
        Sleep, 1000
        Send, {Enter}
    } else {
        Run, % url
    }

    return
}

; ------------------------------------------------------------------------------
; Search (Wikipedia+URL=Web)
; ------------------------------------------------------------------------------

Search(Engine)
{
    baseUrl := "URL_" . Format("{:U}", Engine)
    searchUrl := "URL_" . Format("{:U}", Engine) . "_SEARCH"

    query := GetSelectedOrClipboardText()

    if (query)
    {
        if (Engine = "Wikipedia" && RegExMatch(query, "i)^(https?://|www\.)"))
            Run, % query
        else
        {
            searchTerm := UrlEncode(StrReplace(RTrim(query, "`n"), "`r"))
            if (InStr(%searchUrl%, "%s"))
                url := StrReplace(%searchUrl%, "%s", searchTerm)
            else
                url := %searchUrl% . searchTerm

            if (Debug) {
                SetTimer, ChangeButtonNames, 50
                MsgBox, 68, AI-Hotkeys Debug, url: %url%
                SetTimer, ChangeButtonNames, Off
                IfMsgBox, Yes
                    Clipboard := url
            }

            Run, % url
        }
    }
    else
        Run, % %baseUrl%

    return
}



; ==============================================================================
; CapsLock Hotkeys
; ==============================================================================

#If (CapsLockHotkeys)

; Disable the default CapsLock behavior
SetCapsLockState, AlwaysOff

; ------------------------------------------------------------------------------
; AI (Perplexity) Hotkeys
; ------------------------------------------------------------------------------

; Dynamically set hotkeys
Loop, 26
{
    letter := Chr(A_Index + 64)  ; Convert loop index to uppercase letter (A-Z)
    titleVar := letter . "0"
    if (%titleVar% != "") {
        Hotkey, SC03A & %letter%, AIHandler
    }
}

; ⚠️ AutoHotkey executes the auto-execute section of the script first.
; This auto-execute section runs until it hits a return, hotkey, or hotstring.
; Move the hotkeys to the very bottom of the script, after any other code.

; Use Ctrl+CapsLock to toggle CapsLock
^SC03A::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "AlwaysOff" : "AlwaysOn"

; CapsLock+F1 = Help
SC03A & F1::Help()

; CapsLock+F2 = Suspend Hotkeys
SC03A & F2::Suspend

; CapsLock+F3 = Pause Script
SC03A & F3::Pause

; CapsLock+F4 = Exit
SC03A & F4::ExitApp

; CapsLock+F5 = Reload This Script
SC03A & F5::Reload

; CapsLock+F12 = Edit This Script
SC03A & F12::Edit

; ⚠️ Place the hotkey handler after the script's auto-execute section, below the
; hotkey definitions!

AIHandler:
    AI(Trim(SubStr(A_ThisHotkey, -1)))  ; Extract and trim the letter from the hotkey
return

#If



; ==============================================================================
; CapsLock Off
; ==============================================================================

#If (CapsLockOff)

; Use CapsLock to disable CapsLock
SC03A::SetCapsLockState, AlwaysOff

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
; Query Editor (Alt+LWin / Win+LAlt)
; ==============================================================================

#If (QueryEditor)

#InstallKeybdHook
#UseHook

!LWin::
#LAlt::
    Gosub, ToggleQueryEditor
return

; ------------------------------------------------------------------------------
; Toggle Query Editor
; ------------------------------------------------------------------------------

ToggleQueryEditor:
    ; Minimize or close Query Editor window if it is active
    IfWinActive AI-Hotkeys Query Editor
    {
        if (QueryEditor != "tray") {
            Gui, Minimize
        } else {
            Clipboard := GetQueryFromEditor()
            Gui, Destroy
        }
        return
    }

    ; Create or activate Query Editor window
    IfWinNotExist AI-Hotkeys Query Editor
    {
        CreateQueryEditorGui()
    } else {
        GuiControl,, %ClipboardEdit%, % GetSelectedOrClipboardText()
        WinActivate, AI-Hotkeys Query Editor
    }

    ; Center window on active monitor
    CenterQueryEditorWindow()
return

; ------------------------------------------------------------------------------
; Create Query Editor GUI
; ------------------------------------------------------------------------------

CreateQueryEditorGui() {
    global  ; Make variables accessible

    ; Set theme
    if UseDarkTheme() {  ; Dark theme colors
        Gui, Color, 1E1E1E, 333333  ; Set dark background and control colors
        Gui, Font, cSilver, Segoe UI  ; Set light text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
        ; Force dark mode on the entire window
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 19, "Int*", 1, "Int", 4)
        DllCall("dwmapi\DwmSetWindowAttribute", "Ptr", WinExist(), "Int", 20, "Int*", 1, "Int", 4)
    } else {  ; Light theme colors
        Gui, Color, FFFFFF, F0F0F0  ; Set light background and control colors
        Gui, Font, cBlack, Segoe UI  ; Set dark text color and font
        Gui, +LastFound
        WinSet, Transparent, 245
    }

    ; Add controls
    Gui, Font, s12  ; Set font size to 12
    Gui, Add, Edit, hwndClipboardEdit vQueryEdit w620 h340, % GetSelectedOrClipboardText()
    Gui, Font, s8  ; Set font size back to 8 (default)
    Loop, 15 {
        hotkey := SubStr("QWERTASDFG" . YorZ . "XCVB", A_Index, 1)
        Gui, Add, Button, hwnd%hotkey%Btn g%hotkey%Action Left, % " &" . hotkey . ": " . %hotkey%0
    }

    ; Add main buttons
    Gui, Add, Button, hwndCloseBtn gGuiClose, % CLOSE_BUTTON_CAPTION
    Gui, Add, Button, hwndClearBtn gClear, % CLEAR_BUTTON_CAPTION
    Gui, Add, Button, hwndRestoreBtn gRestore, % RESTORE_BUTTON_CAPTION
    Gui, Add, Button, hwndSaveBtn gSave, % SAVE_BUTTON_CAPTION
    Gui, Add, Button, hwndSendBtn gSend, % SEND_BUTTON_CAPTION

    ; Show window
    Gui, +Resize
    Gui, Show, w800 h600, AI-Hotkeys Query Editor  ; 800x600
    OnMessage(0x0005, "GuiSize")  ; WM_SIZE message

    if (QueryEditor != "tray") {
        Gui, Minimize
    }
}

; ------------------------------------------------------------------------------
; Center Query Editor Window
; ------------------------------------------------------------------------------

CenterQueryEditorWindow() {
    MouseGetPos, MouseX, MouseY
    SysGet, MonitorCount, MonitorCount
    Loop, %MonitorCount%
    {
        SysGet, Monitor, Monitor, %A_Index%
        if (MouseX >= MonitorLeft && MouseX <= MonitorRight && MouseY >= MonitorTop && MouseY <= MonitorBottom)
        {
            WinGetPos,,, Width, Height, AI-Hotkeys Query Editor
            WinMove, AI-Hotkeys Query Editor,, MonitorLeft + (MonitorRight - MonitorLeft - Width) // 2, MonitorTop + (MonitorBottom - MonitorTop - Height) // 2
            break
        }
    }
}

; ------------------------------------------------------------------------------
; Get Query From Editor (Get the current content from the edit control)
; ------------------------------------------------------------------------------

GetQueryFromEditor() {
    global QueryEdit

    Gui, Submit, NoHide
    return QueryEdit
}

; ------------------------------------------------------------------------------
; Subroutines
; ------------------------------------------------------------------------------

GuiSize:
    if (A_EventInfo == 1)  ; The window has been minimized. No action needed.
        return

    ;MsgBox, GuiSize

    NewWidth := A_GuiWidth - 30  ; Adjusted to account for font size 12
    NewHeight := A_GuiHeight - 140  ; Adjusted to account for action button rows
    GuiControl, Move, %ClipboardEdit%, w%NewWidth% h%NewHeight%

    ; Calculate positions for the AI action button rows
    RowY1 := A_GuiHeight - 123
    RowY2 := RowY1 + 30
    RowY3 := RowY2 + 30

    ; Move AI action buttons
    Margin := 10
    ButtonSpacing := 7
    TotalButtonWidth := A_GuiWidth - (2 * Margin) - (4 * ButtonSpacing)
    ButtonWidth := TotalButtonWidth // 5  ; Divide available width by 5 for each button
    Loop, 5 {
        ButtonX := Margin + (A_Index - 1) * (ButtonWidth + ButtonSpacing)
        Hotkey1 := SubStr("QWERT", A_Index, 1)
        Hotkey2 := SubStr("ASDFG", A_Index, 1)
        Hotkey3 := SubStr(YorZ . "XCVB", A_Index, 1)
        GuiControl, Move, % %Hotkey1%Btn, x%ButtonX% y%RowY1% w%ButtonWidth%
        GuiControl, Move, % %Hotkey2%Btn, x%ButtonX% y%RowY2% w%ButtonWidth%
        GuiControl, Move, % %Hotkey3%Btn, x%ButtonX% y%RowY3% w%ButtonWidth%
    }

    ; Calculate position for the main action button row
    ButtonY := A_GuiHeight - 33

    ; Move main action buttons
    Margin := 10
    ButtonSpacing := 7
    TotalButtonWidth := A_GuiWidth - (2 * Margin) - (4 * ButtonSpacing)
    ButtonWidth := TotalButtonWidth // 5  ; Divide available width by 5 for each button
    ButtonX := Margin + 0 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %CloseBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 1 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %ClearBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 2 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %RestoreBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 3 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %SaveBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%
    ButtonX := Margin + 4 * (ButtonWidth + ButtonSpacing)
    GuiControl, Move, %SendBtn%, x%ButtonX% y%ButtonY% w%ButtonWidth%

    ControlFocus,, ahk_id %ClipboardEdit%
    ControlSend,, ^a, ahk_id %ClipboardEdit%
return

GuiClose:  ; Do not rename this label, it's called by the GUI's close button (X)
    if (QueryEditor != "tray") {
        Gui, Minimize
    } else {
        Gui, Destroy
    }
return

Clear:
    GuiControl,, %ClipboardEdit%
    ControlFocus,, ahk_id %ClipboardEdit%
return

Restore:
    GuiControl,, %ClipboardEdit%, % Clipboard
    ControlFocus,, ahk_id %ClipboardEdit%
    ControlSend, , ^a, ahk_id %ClipboardEdit%
return

Save:
    Clipboard := GetQueryFromEditor()
    ControlFocus,, ahk_id %ClipboardEdit%
return

Send:
    AI("", GetQueryFromEditor())
    Gosub, GuiClose
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
    hotkey := SubStr(A_ThisLabel, 1, 1)
    AI(hotkey, GetQueryFromEditor())
    Gosub, GuiClose
return

#IfWinActive, AI-Hotkeys Query Editor

; Close (Esc)
Esc::
    Gosub, GuiClose
return

; Clear (Alt+Del)
!Delete::
    Gosub, Clear
return

; Restore (Alt+Ins)
!Insert::
    Gosub, Restore
return

; Save (Alt+Enter)
!Enter::
!NumpadEnter::
    Gosub, Save
return

; Send (Ctrl+Enter)
^Enter::
^NumpadEnter::
    Gosub, Send
return

#IfWinActive

#If

; Debug
ChangeButtonNames:
    IfWinNotExist, AI-Hotkeys Debug
        return
    WinActivate
    ControlSetText, Button1, ➡️ &Clipboard
    ControlSetText, Button2, &OK
return
