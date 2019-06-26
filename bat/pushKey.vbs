' Pushes keys from the first argument given

Set oShell = Wscript.CreateObject("Wscript.Shell")

on error resume next
oShell.SendKeys Wscript.Arguments(0)

set oShell = nothing