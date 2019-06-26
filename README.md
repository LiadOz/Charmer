# Charmer

A virus that can be used to control another computer on the same newtwork.
In order to make it work the host needs to have the file startCharmer.vbs open.

This code can be used on any Windows computer versions XP and up.

To use stream commands to computer running Charmer use cmd and navigate to Charmer folder.
The commands are:

1. formatLog				- Format the log file.
2. readLog					- Read the log file.
3. terminate				- Stop the Charmer code.
4. wrun	"bat arguments" 	- Call a bat file from the bat folder with argumemts.
5. wcommand "command"		- Call cmd commad.

Examples:

wrun "pushKey Hello"		- The host computer will type abc.
wrun "exitWord"				- The host computer will exit all word instances.
wcommand "shutdown -s -t 60	- Host computer will terminate in 60 seconds. 

Available Batch Files:

1. copyFile "file destination"	- Copies file (Use full paths).
2. killWindow "window.exe"		- Exits instances will stop Charmer.
3. msgbox "message"				- Prints a message on screen.
4. pushKey "keys"				- Types Keys.
