-- Run a specific Shortcut and enable Do Not Disturb (macOS Sonoma)
-- This can be invoked from a zsh script using `osascript`

-- Replace with the exact name of your Shortcut
set shortcutName to "Enforce DND & Deploy Shortcuts"

try
    -- Trigger the Shortcut
    tell application "Shortcuts" to run shortcut shortcutName
on error errMsg
    display dialog "Failed to run shortcut: " & errMsg
end try

-- Optionally, enforce Do Not Disturb directly (Sonoma allows programmatic control via Shortcuts)
-- The shortcut should handle enabling DND and restoring it if needed
