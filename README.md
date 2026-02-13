# AppleScripts-for-macOS-IT-Administration

This repository contains practical AppleScript snippets for system administration, user management, and UI automation.

# Core AppleScript Commands

do shell script – Run Terminal/Unix commands

display dialog – Create interactive prompts

display notification – Send Notification Center alerts

tell application – Control macOS apps

# System & Network Administration

Restart / Shut Down Computer:

tell application "System Events" to restart
tell application "System Events" to shut down

Display System Information:

system info

Returns:

Username

IP address

macOS version

Mount Network Drive:

mount volume "smb://servername/sharename"

Flush DNS Cache:

do shell script "sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder" with administrator privileges

Get Public IP Address:

do shell script "curl ifconfig.me"

# File & User Management

Move File to Trash:

tell application "Finder" to move (POSIX file "/path/to/file") to trash

Create Folder:

do shell script "mkdir -p /Users/username/Desktop/NewFolder"

Read / Write Text File:

write "Log entry" to (open for access (path to desktop as text) & "log.txt" as file) starting at eof

Change File Permissions:

do shell script "chmod 755 /path/to/file"

# UI Automation & Notifications

Display Notification:

display notification "Backup Complete" with title "IT Alert" subtitle "Backup Status"

Interactive Dialog:

display dialog "Update required. Restart now?" buttons {"Later", "Restart"} default button "Restart"

Open Application at Login:

tell application "System Events" to make login item at end with properties {path:"/Applications/AppName.app", hidden:false}

# Common Key Codes (System Events)

| Action                      | AppleScript                      |
| --------------------------- | -------------------------------- |
| Command + Space (Spotlight) | `key code 49 using command down` |
| Command + Q (Quit)          | `key code 12 using command down` |
| Command + W (Close Window)  | `key code 13 using command down` |
| Escape                      | `key code 53`                    |

# Notes

Some commands require administrator privileges.

Test scripts in a non-production environment before deployment.

Consider integrating with MDM platforms like Jamf or Kandji for enterprise rollout.
