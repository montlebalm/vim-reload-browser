" browser-reload.vim - Browser Reload
" Author: Chris Montrois <https://chrismontrois.net>
" License: MIT

if exists('g:loaded_reload_browser') || &cp || v:version < 700
  finish
endif
let g:loaded_reload_browser = 1

let s:plugin_dir = expand('<sfile>:p:h:h')
let s:chrome_path = s:plugin_dir . '/.bin/reload-chrome.applescript'
let s:safari_path = s:plugin_dir . '/.bin/reload-safari.applescript'

function! g:ReloadBrowser()

  " Google Chrome
  if get(g:, 'reload_browser_chrome') == 1
    :call system('osascript '.s:chrome_path.' &')
  endif

  " Safari
  if get(g:, 'reload_browser_safari') == 1
    :call system('osascript '.s:safari_path.' &')
  endif

endfunction
