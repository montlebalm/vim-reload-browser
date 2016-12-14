if application "Safari" is running then
  tell application "Safari"
    set docUrl to URL of document 1
    set URL of document 1 to docUrl
  end tell
end if
