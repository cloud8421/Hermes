"Ctrlp configuration
let g:ctrlp_working_path_mode = 2
set wildignore+=*/.hg/*,*/.svn/*,*/vendor/cache/*,*/public/system/*,*/tmp/*,*/log/*,*/.git/*,*/.jhw-cache/*,*/solr/data/*,*/node_modules/*,*/.DS_Store
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_extensions = ['tag', 'quickfix']

"This function uses Ctrl-p to display Rspec test failures in the quickfix
"window. Requires a properly configured RSpec environment
function! RefreshAndDisplayQuickFix()
  if filereadable(".rspec-results")
    silent execute "!grep '.spec' .rspec-results > .rspec-results-trim"
    cf .rspec-results-trim
    silent execute "!rm .rspec-results-trim"
    CtrlPQuickfix
    redraw!
  else
    echo 'No .quickfix-out file'
  endif
endfunction

nnoremap <leader>s :execute RefreshAndDisplayQuickFix()<CR>

" NERDTree customization
let NERDTreeShowHidden=0
let NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2
nmap <silent> <leader>3 :NERDTreeToggle<cr>

