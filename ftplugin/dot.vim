command -buffer Nop 1,$!nop

if has('autocmd')
  augroup ft_dot
    au!
    au BufWritePre <buffer> Nop
  augroup END
endif

setlocal makeprg=dot\ -Tpng\ -o\ %:r.png\ %
