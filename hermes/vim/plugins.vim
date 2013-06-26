"Ctrlp configuration
" let g:ctrlp_working_path_mode = 2
" set wildignore+=*/.hg/*,*/.svn/*,*/vendor/cache/*,*/public/uploads/*,*/public/system/*,*/public/app/vendor/*,*/public/javascripts/vendor/*,*/src/vendor/*,*/tmp/*,*/log/*,*/.git/*,*/.jhw-cache/*,*/solr/data/*,*/node_modules/*,*/.DS_Store
let g:ctrlp_match_window_reversed = 0
" let g:ctrlp_extensions = ['tag']

"Greyhound
let g:greyhound_path = '/Users/cloud/bin/greyhound'
let g:ctrlp_use_caching = 0
let g:greyhound_exclude_paths = ".git,public/system,public/uploads,.svn,tmp/,vendor/cache,vendor/bundle,log/,.bundle,coverage/,src/vendor,node_modules,bower_components "
let g:ctrlp_user_command = g:greyhound_path." --exclude ".g:greyhound_exclude_paths
let g:ctrlp_match_func = { 'match': 'Greyhound' }

function! Greyhound(items, str, limit, mmode, ispath, crfile, regex)

  let cmd = g:greyhound_path.' --exclude '.g:greyhound_exclude_paths

  if (strlen(a:str) > 0)
    let cmd = cmd.' --query '.a:str
  endif

  return split(system(cmd), "\n")

endfunction

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" NERDTree customization
let NERDTreeShowHidden=0
let NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2
let NERDTreeHijackNetrw=1
nmap <silent> <leader>3 :NERDTreeToggle<cr>

