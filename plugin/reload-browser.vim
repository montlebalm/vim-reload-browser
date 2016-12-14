" browser-reload.vim - Browser Reload
" Author: Chris Montrois <https://chrismontrois.net>
" License: MIT

if exists("g:loaded_reload_browser") || &cp || v:version < 700
  finish
endif
let g:loaded_reload_browser = 1

function! g:ReloadBrowser()

  " Google Chrome
  let reload_chrome = get(g:, 'reload_browser_chrome', 0)
  if reload_chrome == 1
    " silent! :!osascript .bin/reload-chrome.applescript
    :Dispatch! osascript ../.bin/reload-chrome.applescript
  endif

  " Safari
  let reload_safari = get(g:, 'reload_browser_safari', 0)
  if reload_safari == 1
    :Dispatch! osascript ../.bin/reload-safari.applescript
  endif

  " Safari Technology Preview
  if get(g:, 'reload_browser_safari_tech_preview', 0)
    :Dispatch! osascript ../.bin/reload-safari.applescript
  endif

endfunction
