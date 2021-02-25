function! crystalline#theme#darkblue#set_theme() abort
  call crystalline#generate_theme({
        \ 'NormalMode':  [[33, 235], ['#368DFF', '#282c34']],
        \ 'InsertMode':  [[235, 33],  ['#282c34', '#368DFF']],
        \ 'VisualMode':  [[235, 33], ['#282c34', '#FF3B51']],
        \ 'ReplaceMode': [[235, 196], ['#282c34', '#FF3B51']],
        \ '':            [[145, 236], ['#abb2bf', '#3e4452']],
        \ 'Inactive':    [[235, 145], ['#282c34', '#abb2bf']],
        \ 'Fill':        [[114, 236], ['#abb2bf', '#282c34']],
        \ 'Tab':         [[145, 236], ['#abb2bf', '#3e4452']],
        \ 'TabType':     [[235, 33], ['#282C34', '#FF3B51']],
        \ 'TabSel':      [[235, 196], ['#282c34', '#FF3B51']],
        \ 'TabFill':     [[114, 236], ['#abb2bf', '#282c34']],
        \ })
endfunction

" vim:set et sw=2 ts=2 fdm=marker:
