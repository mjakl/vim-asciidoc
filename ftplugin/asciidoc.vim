" The fold-detection is based on the vim-markdown script
" from https://github.com/plasticboy/vim-markdown
"
" Comments are supported as well

func! Foldexpr_asciidoc(lnum)
    let l0 = getline(a:lnum)

    if l0 =~ '^='
        " current line starts with =
        return '>'.matchend(l0, '^=\+')
    else
        " keep previous foldlevel
        return '='
    endif
endfunc

if !get(g:, "vim_asciidoc_folding_disabled", 0)
  setlocal foldexpr=Foldexpr_asciidoc(v:lnum)
  setlocal foldmethod=expr

  " allow the initial foldlevel to be configured in .vimrc
  if !exists("g:vim_asciidoc_initial_foldlevel")
    let g:vim_asciidoc_initial_foldlevel=0
  endif
  let &l:foldlevel=g:vim_asciidoc_initial_foldlevel
endif

setlocal commentstring=//\ %s
setlocal comments=://,sr:////,mb:,ex:////

