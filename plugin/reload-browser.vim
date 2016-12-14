" browser-reload.vim - Browser Reload
" Author: Chris Montrois <https://chrismontrois.net>
" License: MIT

if exists("g:loaded_reload_browser") || &cp || v:version < 700
  finish
endif
let g:loaded_reload_browser = 1

function! g:ReloadBrowser()

  " Path to the plugin directory
  let s:plugin_path = expand('<sfile>:p:h')

  " Google Chrome
  let s:reload_chrome = get(g:, 'reload_browser_chrome', 0)
  if s:reload_chrome == 1
    :call system('osascript ' . s:plugin_path . '/.bin/reload-chrome.applescript &')
  endif

  " Safari
  let s:reload_safari = get(g:, 'reload_browser_safari', 0)
  if s:reload_safari == 1
    :call system('osascript ' . s:plugin_path . '/.bin/reload-safari.applescript &')
  endif

endfunction
