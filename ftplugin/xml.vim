augroup ftplugin_xml
  autocmd!
  autocmd BufWritePre <buffer> call whitespace#removetrailing()
augroup END

setlocal formatprg=xmllint\ --format\ -
