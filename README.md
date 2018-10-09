# CotEditor Swift Script Set

## Run Script

Using AppleScript, you can run the file you're currently working on in CotEditor. It is configured to work with iTerm, but can easily be switched to function with the default Mac OS terminal by switching 'tell application "iTerm"' to 'tell application "Terminal"'. I've also made this AppleScript compatiable with up to 20 programming languages if you'd like to keep it in the general scripts folder for quicker access. The current list of languages are:

* Crystal
* Python
* Java
* Go
* Swift
* Rust
* D
* AppleScript
* Perl
* C#
* Dart
* Haskell
* JavaScript
* PHP
* Objective-C
* Julia
* Lua
* ShellScript
* CoffeeScript
* (Working on C/C++)

## Run Selection

Runs the highlighted text in Swift's REPL. By using REPL, this script serves as good debugging tool and isn't as inconsistent as executing a line of code with just a Swift command.

## Swift Lint

This script utilizes "SwiftLint" by Realm.io to enforces Swift style and conventions. Swiftlint has to be installed first with the following command:
	 
```
brew install swiftlint
```

## Swift Format

Formats your current Swift file with "swiftformat" by nicklockwood. Similar to the script above, swiftformat has to be installed first.

```
brew install swiftformat
```

## Macros

The other folders can be used to keybind common lines of code. 

## Credit

* 1024jp for CotEditor and script inspirations
* nicklockwood for swiftformat
* Realm.io for swiftlint
