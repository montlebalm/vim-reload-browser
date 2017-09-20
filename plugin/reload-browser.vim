" browser-reload.vim - Browser Reload
" Author: Chris Montrois <https://chrismontrois.net>
" License: MIT

if exists('g:loaded_reload_browser') || &cp || v:version < 700
  finish
endif
let g:loaded_reload_browser = 1

" Google Chrome script
let s:chrome_lines = [
  \'if application \"Google Chrome\" is running then',
    \'tell application \"Google Chrome\" to reload active tab of front window',
  \'end if',
  \]
let s:chrome_script = '-e "' . join(s:chrome_lines, '" -e "') . '"'

" Safari script
let s:safari_lines = [
  \'if application \"Safari\" is running then',
    \'tell application \"Safari\"',
      \'set docUrl to URL of document 1',
      \'set URL of document 1 to docUrl',
    \'end tell',
  \'end if',
  \]
let s:safari_script = '-e "' . join(s:safari_lines, '" -e "') . '"'

function! g:ReloadBrowser()

  " Google Chrome
  if get(g:, 'reload_browser_chrome') == 1
    :echo system('osascript ' . s:chrome_script)
  endif

  " Safari
  if get(g:, 'reload_browser_safari') == 1
    :echo system('osascript ' . s:safari_script)
  endif

endfunction
