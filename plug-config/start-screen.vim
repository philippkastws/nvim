
let g:startify_custom_header = [
        \ '   *------------------------------------------------------*',
        \ '   | Hit the space bar to get started with short cuts! 😳 |',
        \ '   *------------------------------------------------------*',
        \]

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

"let g:startify_session_dir = '~/.config/nvim/session'
"
"
"let g:startify_lists = [
"          \ { 'type': 'files',     'header': ['   Files']                        },
"          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
"          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
"          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
"          \ ]
"
"
let g:startify_session_autoload = 1
"let g:startify_session_delete_buffers = 1
"let g:startify_change_to_vcs_root = 1
"let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_session_before_save = [ 'silent! tabdo NvimTreeClose' ]
"
let g:webdevicons_enable_startify = 1
"
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction
"
"let g:startify_bookmarks = [
"            \ { 'c': '~/.config/i3/config' },
"            \ { 'i': '~/.config/nvim/init.vim' },
"            \ { 'z': '~/.zshrc' },
"            \ '~/Blog',
"            \ '~/Code',
"            \ '~/Pics',
"            \ ]
"
"let g:startify_enable_special = 0

let g:startify_change_to_dir = 0
