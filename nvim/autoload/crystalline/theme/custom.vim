function! crystalline#theme#custom#set_theme() abort
  call crystalline#generate_theme({
        \ 'NormalMode':  [[235, 114], ['#282c34', '#368DFF']],
        \ 'InsertMode':  [[235, 39],  ['#282c34', '#368DFF']],
        \ 'VisualMode':  [[235, 170], ['#282c34', '#c678dd']],
        \ 'ReplaceMode': [[235, 204], ['#282c34', '#FF3B51']],
        \ '':            [[145, 236], ['#abb2bf', '#3e4452']],
        \ 'Inactive':    [[235, 145], ['#282c34', '#abb2bf']],
        \ 'Fill':        [[114, 236], ['#abb2bf', '#282c34']],
        \ 'Tab':         [[145, 236], ['#abb2bf', '#3e4452']],
        \ 'TabType':     [[235, 170], ['#282C34', '#C678DD']],
        \ 'TabSel':      [[235, 114], ['#282c34', '#FF3B51']],
        \ 'TabFill':     [[114, 236], ['#abb2bf', '#282c34']],
        \ })
endfunction

" vim:set et sw=2 ts=2 fdm=marker:

