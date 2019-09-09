if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords RUN UNTIL IF ELSE LOCK SET TO AT RETURN LOCAL GLOBAL IS PRINT ROUND FOR IN ON CLEARSCREEN STAGE
syn keyword basicLanguageKeywords WAIT ON OFF TRUE FALSE
syn keyword basicLanguageKeywords run until if else lock set to at return local global is print round for in on clearscreen stage
syn keyword basicLanguageKeywords wait on off true false

syn keyword basicLanguageKeywords2 FUNCTION PRINT PARAMETER RETURN
syn keyword basicLanguageKeywords2 function print parameter return

syn keyword consts SHIP BODY VESSEL UP NORTH ALT RADAR CONTROL LAT LNG VELOCITY SURFACE GEOPOSITON VECTOR MODULESNAMED HIGHLIGHT
syn keyword consts AG1 AG2 AG3 AG4 AG5 AG6 AG7 AG8 AG9 AG0 HASDATA DEPLOY INOPERABLE TIME SECONDS PILOTPITCH PILOTYAW PILOTROLL
syn keyword consts FACING VECTOR FOREVECTOR STARVECTOR UPVECTOR GEOPOSITION MAINTHROTTLE SAS RCS
syn keyword consts ship body vessel up north alt radar control lat lng velocity surface geopositon vector modulesnamed highlight
syn keyword consts ag1 ag2 ag3 ag4 ag5 ag6 ag7 ag8 ag9 ag0 hasdata deploy inoperable time seconds pilotpitch pilotyaw pilotroll
syn keyword consts facing vector forevector starvector upvector geoposition mainthrottle sas rcs

syn match comments "\/\/.*$"

syn match number '\d\+'
syn match number '[-+]\d\+'

syn region string start='"' end='"'

let b:current_syntax = "kos"

hi def link basicLanguageKeywords  Identifier
hi def link basicLanguageKeywords2 Statement
hi def link consts                 Constant
hi def link comments               Comment
hi def link string                 Type
hi def link number                 PreProc

