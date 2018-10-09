

tell application "CotEditor" to set theFile to file of front document
tell application "Finder" to set theFolder to (container of file theFile) as alias
set theUnixPath to POSIX path of theFolder

set AppleScript's text item delimiters to ":"
set sourceFile to the last text item of (theFile as string)

if sourceFile contains "rb" then set runCmd to "ruby "
if sourceFile contains "cr" then set runCmd to "crystal "
if sourceFile contains "py" then set runCmd to "python "
if sourceFile contains "java" then set runCmd to "javac "
if sourceFile contains "class" then set runCmd to "java "
if sourceFile contains "go" then set runCmd to "go run "
if sourceFile contains "swift" then set runCmd to "swift "
if sourceFile contains "rs" then set runCmd to "rustc "
if sourceFile contains "d" then set runCmd to "dmd "
if sourceFile contains "scpt" then set runCmd to "osascript "
if sourceFile contains "pl" then set runCmd to "perl "
if sourceFile contains "cs" then set runCmd to "csc "
if sourceFile contains "dart" then set runCmd to "dart "
if sourceFile contains "hs" then set runCmd to "runhaskell "
if sourceFile contains "js" then set runCmd to "node "
if sourceFile contains "php" then set runCmd to "php "
# if sourceFile contains "cpp" then set runCmd to "gcc -o output "
if sourceFile contains "m" then set runCmd to "gcc "
# if sourceFile contains "c" then set runCmd to "gcc -o output "
if sourceFile contains "jl" then set runCmd to "julia "
if sourceFile contains "lua" then set runCmd to "lua "
if sourceFile contains "sh" then set runCmd to "sh "
if sourceFile contains "coffee" then set runCmd to "coffee "

if application "iTerm" is running then
	tell application "iTerm"
		if not (exists current window) then (create window with default profile)
		tell current window
			tell current session
				write text "clear; " & "cd " & (quoted form of theUnixPath) & "; " & runCmd & sourceFile & ";"
			end tell
		end tell
	end tell
else
	tell application "iTerm"
		activate
		set newWindow to (create window with default profile)
		tell current window
			tell current session
				write text "cd " & (quoted form of theUnixPath) & "; RunCmd  " & sourceFile & ";"
			end tell
		end tell
	end tell
end if
-----------




