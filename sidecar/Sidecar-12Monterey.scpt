set counter to 0
set x to 0
beep 1
activate application "SystemUIServer"
tell application "System Preferences"
	activate
	set the current pane to pane id "com.apple.preference.Displays"
	delay 3
	tell application "System Events"
		tell application process "System Preferences"
			tell window "顯示器"
				click pop up button "加入顯示器"
				click menu item "Willin-m5" of menu "加入顯示器" of pop up button "加入顯示器" of window "顯示器" of application process "System Preferences" of application "System Events"
			end tell
		end tell
	end tell
	quit
end tell
say "完成"
