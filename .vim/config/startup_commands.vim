autocmd VimEnter * call StartUpWithoutArgs()


autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
