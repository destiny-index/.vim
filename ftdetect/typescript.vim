" Avoid loading .ts files as Qt Linguist files
autocmd BufRead,BufNewFile *.ts let b:did_ftplugin = 1

autocmd BufRead,BufNewFile *.ts set filetype=typescript
