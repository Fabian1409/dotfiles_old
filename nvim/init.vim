" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'airblade/vim-gitgutter'
Plug 'rbong/vim-crystalline'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf'
Plug 'conornewton/vim-pandoc-markdown-preview'
Plug 'easymotion/vim-easymotion'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'joshdick/onedark.vim'
" Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/autoload/crystalline/theme/custom.vim
" source $HOME/.config/nvim/plug-config/ondeark.vim
source $HOME/.config/nvim/themes/redblue.vim

function! StatusLine(current, width)
  let l:s = ''

  if a:current
    let l:s .= crystalline#mode() . crystalline#right_mode_sep('')
  else
    let l:s .= '%#CrystallineInactive#'
  endif
  let l:s .= ' %f%h%w%m%r '

  let l:s .= '%='
  if a:current
    let l:s .= crystalline#left_sep('', 'Fill') . ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
    let l:s .= crystalline#left_mode_sep('')
  endif
  if a:width > 80
    let l:s .= ' %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
  else
    let l:s .= ' '
  endif

  return l:s
endfunction

function! TabLine()
  let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
  return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
endfunction

let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'darkblue'

" let g:material_theme_style = 'default'
" colorscheme material
set showtabline=2
set termguicolors
set guioptions-=e
set laststatus=2
:hi StartifyHeader guifg=#368DFF
:hi Pmenu ctermbg=247
:hi PmenuSel ctermbg=33 ctermfg=16
let g:md_pdf_viewer="evince"
let g:startify_custom_header = [
\ ' __    __  ________   ______   __     __  ______  __       __  ',
\ '/  \  /  |/        | /      \ /  |   /  |/      |/  \     /  | ',
\ '$$  \ $$ |$$$$$$$$/ /$$$$$$  |$$ |   $$ |$$$$$$/ $$  \   /$$ | ',
\ '$$$  \$$ |$$ |__    $$ |  $$ |$$ |   $$ |  $$ |  $$$  \ /$$$ | ',
\ '$$$$  $$ |$$    |   $$ |  $$ |$$  \ /$$/   $$ |  $$$$  /$$$$ | ',
\ '$$ $$ $$ |$$$$$/    $$ |  $$ | $$  /$$/    $$ |  $$ $$ $$/$$ | ',
\ '$$ |$$$$ |$$ |_____ $$ \__$$ |  $$ $$/    _$$ |_ $$ |$$$/ $$ | ',
\ '$$ | $$$ |$$       |$$    $$/    $$$/    / $$   |$$ | $/  $$ | ',
\ '$$/   $$/ $$$$$$$$/  $$$$$$/      $/     $$$$$$/ $$/      $$/  ',
\ '',                                                                                                                  
\]
filetype plugin on
