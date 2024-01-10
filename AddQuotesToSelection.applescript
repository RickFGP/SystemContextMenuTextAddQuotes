
(*
Add quotes -- system-wide context menu option for text manipulation.

Output -- replaces selected string with double-quoted version of same string.
Input  -- User has selected a text in an editable text field system-wide.

An Automator Mac App 'workflow' code fragment--

Draft version-- Documentation, codes style and refactoring are works in progress.
Tested -- in Script Editor app, Mac Os 10.15

Basic setup 
Open 'Automator' app.
New 'quick action'.
'workflow recieves current -text- in -any applicaiton,
check 'output replaces selected text'
defailt settings otherwise.

Locate the editable field called 'run applescript'.
paste this whole file into it.

There is a process of saving the 'workflow' and registering it as a system service. Instructions for that are available online. Ill edit those in later as time permits.

*)

on run {input, parameters}	if input is {} then		display dialog "No text is selected."	else		set theSelection to input as text		set theSelection to "\"" & theSelection & "\""		set the clipboard to theSelection		return theSelection	end ifend run