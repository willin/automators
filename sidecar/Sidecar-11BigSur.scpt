tell application "System Preferences"

	activate
	delay 2
	set the current pane to pane id "com.apple.preference.sidecar"
	delay 2

	tell application "System Events"
		tell application process "System Preferences"
			tell window "並行"
				click menu button "選擇裝置"
				click menu item "Willin-m5" of menu "選擇裝置" of menu button "選擇裝置" of window "並行" of application process "System Preferences" of application "System Events"
			end tell
		end tell
	end tell

end tell
