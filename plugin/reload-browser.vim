" browser-reload.vim - Browser Reload
" Author: Chris Montrois <https://chrismontrois.net>
" License: MIT

if exists("g:loaded_reload_browser") || &cp || v:version < 700
  finish
endif
let g:loaded_reload_browser = 1

function! g:ReloadBrowser()

  " Google Chrome
  let s:reload_chrome = get(g:, 'reload_browser_chrome', 0)
  if s:reload_chrome == 1
    :call system('osascript .bin/reload-chrome.applescript &')
  endif

  " Safari
  let s:reload_safari = get(g:, 'reload_browser_safari', 0)
  if s:reload_safari == 1
    :call system('osascript .bin/reload-safari.applescript &')
  endif

endfunction
