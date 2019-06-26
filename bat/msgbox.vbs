' Pushes keys from the first argument given

Set oShell = Wscript.CreateObject("Wscript.Shell")

on error resume next
msgbox Wscript.Arguments(0)

set oShell = nothing