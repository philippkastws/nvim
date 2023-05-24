nnoremap <silent> <Space> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Space> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
"innoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
"let g:which_key_map['?'] = 'search word'

let g:bclose_no_plugin_maps = 1
" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
"let g:which_key_map['/'] = [ ':call Comment()'                    , 'comment' ]
"let g:which_key_map['.'] = [ ':e $MYVIMRC'                        , 'open init' ]
"let g:which_key_map[';'] = [ ':Commands'                          , 'commands' ]
"let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]
"let g:which_key_map['d'] = [ ':Bdelete'                           , 'delete buffer']
"let g:which_key_map['e'] = [ ':CocCommand explorer'               , 'explorer' ]
"let g:which_key_map['f'] = [ ':Farr'                              , 'find and replace' ]
let g:which_key_map['h'] = [ ':History:'                           , 'Command history (:History:)']
"let g:which_key_map['m'] = [ ':call WindowSwap#EasyWindowSwap()'  , 'move window' ]
let g:which_key_map['w'] = [ ':Windows', 'search windows']
let g:which_key_map['f'] = [ ':Telescope find_files', 'search files' ] " [ ':Files', 'search files' ]
let g:which_key_map['F'] = [ ':Telescope find_files hidden=true', 'search files (incl hidden)' ]
let g:which_key_map['q'] = [ ':qall' , 'quit' ]
let g:which_key_map['r'] = [ ':Ranger' , 'ranger (Q to quit)' ]
let g:which_key_map['E'] = [ ':Explore' , 'explore' ]
let g:which_key_map['?'] = [ ':Cheat40' , 'cheat sheet' ]
let g:which_key_map['??'] = [ ':Cheatsheet' , 'cheat' ]
let g:which_key_map['T'] = [ ':FloatermToggle' , 'terminal toggle' ]
"let g:which_key_map['Z'] = [ ':FZF', 'FZF' ]
let g:which_key_map['g'] = [ ':Telescope live_grep', 'grep text' ] "[ ':Rg', 'grep text' ]
let g:which_key_map['o'] = [ ':Telescope oldfiles', 'recent files' ]
let g:which_key_map['O'] = [ ':Startify', 'start page' ]
let g:which_key_map['G'] = [ ':Telescope live_grep hidden=true', 'grep text (incl hidden)' ]
"let g:which_key_map['e'] = [ ':NERDTreeToggle', 'nerd tree toggle' ]
let g:which_key_map['e'] = [ ':NvimTreeToggle', 'nvim tree toggle' ]
"let g:which_key_map['Q'] = [ '<c-q>', 'unlock screen (ctrl+q)' ]
let g:which_key_map['U'] = [ ':Gedit HEAD', 'Git walk history (:Gedit HEAD)' ]
let g:which_key_map['I'] = [ ':Git', 'Git Fugitive (:Git)' ]
let g:which_key_map['x'] = [ ':GitGutterNextHunk', 'Next hunk (:GitGutterNextHunk)' ]
let g:which_key_map['y'] = [ ':GitGutterPrevHunk', 'Prev hunk (:GitGutterPrevHunk)' ]
let g:which_key_map['l'] = [ ':Telescope', 'Telescope' ]
let g:which_key_map['M'] = [ ':Magit', 'Magit' ]
let g:which_key_map['L'] = [ ':FloatermNew lazygit', 'Lazy git' ]
let g:which_key_map['UU'] = [ ':GitGutterUndoHunk', 'Undo hunk' ]
let g:which_key_map['GG'] = [ ':Telescope git_status', 'Git status' ]
let g:which_key_map['b'] = [ ':Telescope buffers', 'Show buffers' ]
let g:which_key_map['c'] = [ '<C-w>c', 'Close window (ctrl-w c)' ]
let g:which_key_map['C'] = [ ':bd', 'Close buffer (:bd)' ]
let g:which_key_map['nn'] = [ '<S-L>', 'Next buffer (Shift-L)' ]
let g:which_key_map['ff'] = [ ':BLines', 'Filter buffer (:BLines)' ]

"let g:which_key_map['x'] = [ 'YP' , 'copy line (Y P)' ]

"let g:which_key_map['u'] = [ ':UndotreeToggle'                    , 'undo tree']
"let g:which_key_map['v'] = [ '<C-W>v'                             , 'split right']
"let g:which_key_map['W'] = [ 'w'                                  , 'write' ]
"let g:which_key_map['z'] = [ 'Goyo'                               , 'zen' ]

" Group mappings

let g:which_key_map.a = {
      \ 'name' : '+actions',
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'w' : [':set wrap!'              , 'wrap lines'],
      \ }

"" a is for actions
"let g:which_key_map.a = {
"      \ 'name' : '+actions' ,
"      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
"      \ 'e' : [':CocCommand explorer'    , 'explorer'],
"      \ 'l' : [':Bracey'                 , 'start live server'],
"      \ 'L' : [':BraceyStop'             , 'stop live server'],
"      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
"      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
"      \ 'n' : [':set nonumber!'          , 'line-numbers'],
"      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
"      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
"      \ 't' : [':FloatermToggle'         , 'terminal'],
"      \ 'v' : [':Codi'                   , 'virtual repl on'],
"      \ 'V' : [':Codi!'                  , 'virtual repl off'],
"      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
"      \ }

"" b is for buffer
"let g:which_key_map.b = {
"      \ 'name' : '+buffer' ,
"      \ '1' : ['b1'        , 'buffer 1'],
"      \ '2' : ['b2'        , 'buffer 2'],
"      \ 'd' : [':Bdelete'  , 'delete-buffer'],
"      \ 'f' : ['bfirst'    , 'first-buffer'],
"      \ 'h' : ['Startify'  , 'home-buffer'],
"      \ 'l' : ['blast'     , 'last-buffer'],
"      \ 'n' : ['bnext'     , 'next-buffer'],
"      \ 'p' : ['bprevious' , 'previous-buffer'],
"      \ '?' : ['Buffers'   , 'fzf-buffer'],
"      \ }
"
"" f is for find and replace
"let g:which_key_map.f = {
"      \ 'name' : '+find & replace' ,
"      \ 'b' : [':Farr --source=vimgrep'    , 'buffer'],
"      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
"      \ }
"
"" k is for task
"let g:which_key_map.k = {
"      \ 'name' : '+task' ,
"      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
"      \ 'b' : [':AsyncTask project-build'     , 'build project'],
"      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
"      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
"      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
"      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
"      \ 'l' : [':CocList tasks'               , 'list tasks'],
"      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
"      \ 'o' : [':copen'                       , 'open task view'],
"      \ 'r' : [':AsyncTask file-run'          , 'run file'],
"      \ 'p' : [':AsyncTask project-run'       , 'run project'],
"      \ 'x' : [':cclose'                      , 'close task view'],
"      \ }
"      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],
"
" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files (:GFiles?)'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history (:History:)'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      "\ 'P' : [':Tags'                  , 'project tags'],
      "\ 's' : [':CocList snippets'      , 'snippets'],
      "\ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      "\ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],

let g:which_key_map.H = {
      \ 'name' : '+Hop' ,
      \ 'l' : [':HopLine'               , ':HopLine'],
      \ 'w' : [':HopWord'               , ':HopWord'],
      \ 'c' : [':HopChar1'              , ':HopChar1 (f)'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" i is for git
let g:which_key_map.i = {
      \ 'name' : '+git' ,
      \ 'e' : [':Gedit HEAD'                       , 'inspect history (:Gedit HEAD)'],
      "\ 'a' : [':Git add .'                        , 'add all'],
      "\ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      "\ 'B' : [':GBrowse'                          , 'browse'],
      "\ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      "\ 's' : [':Git status'                          , 'status'],
      "\ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      "\ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'G' : [':Git'                              , 'fugitive'],
      "\ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      "\ 'p' : [':Git push'                         , 'push'],
      "\ 'P' : [':Git pull'                         , 'pull'],
      "\ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      "\ 'S' : [':!git status'                      , 'status'],
      "\ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      "\ 'v' : [':GV'                               , 'view commits'],
      "\ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
"
"let g:which_key_map.G = {
"      \ 'name' : '+gist' ,
"      \ 'a' : [':Gist -a'                          , 'post gist anon'],
"      \ 'b' : [':Gist -b'                          , 'post gist browser'],
"      \ 'd' : [':Gist -d'                          , 'delete gist'],
"      \ 'e' : [':Gist -e'                          , 'edit gist'],
"      \ 'l' : [':Gist -l'                          , 'list public gists'],
"      \ 's' : [':Gist -ls'                         , 'list starred gists'],
"      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
"      \ 'p' : [':Gist -P'                          , 'post public gist '],
"      \ 'P' : [':Gist -p'                          , 'post private gist '],
"      \ }
"
"" l is for language server protocol
"let g:which_key_map.l = {
"      \ 'name' : '+lsp' ,
"      \ '.' : [':CocConfig'                          , 'config'],
"      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
"      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
"      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
"      \ 'b' : [':CocNext'                            , 'next action'],
"      \ 'B' : [':CocPrev'                            , 'prev action'],
"      \ 'c' : [':CocList commands'                   , 'commands'],
"      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
"      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
"      \ 'e' : [':CocList extensions'                 , 'extensions'],
"      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
"      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
"      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
"      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
"      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
"      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
"      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
"      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
"      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
"      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
"      \ 'O' : [':CocList outline'                    , 'outline'],
"      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
"      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
"      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
"      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
"      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
"      \ 's' : [':CocList -I symbols'                 , 'references'],
"      \ 'S' : [':CocList snippets'                   , 'snippets'],
"      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
"      \ 'u' : [':CocListResume'                      , 'resume list'],
"      \ 'U' : [':CocUpdate'                          , 'update CoC'],
"      \ 'v' : [':Vista!!'                            , 'tag viewer'],
"      \ 'z' : [':CocDisable'                         , 'disable CoC'],
"      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
"      \ }
"
"" t is for terminal
"let g:which_key_map.t = {
"      \ 'name' : '+terminal' ,
"      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
"      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"      \ 'n' : [':FloatermNew node'                              , 'node'],
"      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"      \ 'p' : [':FloatermNew python'                            , 'python'],
"      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
"      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"      \ 't' : [':FloatermToggle'                                , 'toggle'],
"      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
"      \ }
"
"" T is for terminal
"let g:which_key_map.T = {
"      \ 'name' : '+tabline' ,
"      \ 'b' : [':XTabListBuffers'         , 'list buffers'],
"      \ 'd' : [':XTabCloseBuffer'         , 'close buffer'],
"      \ 'D' : [':XTabDeleteTab'           , 'close tab'],
"      \ 'h' : [':XTabHideBuffer'          , 'hide buffer'],
"      \ 'i' : [':XTabInfo'                , 'info'],
"      \ 'l' : [':XTabLock'                , 'lock tab'],
"      \ 'm' : [':XTabMode'                , 'toggle mode'],
"      \ 'n' : [':tabNext'                 , 'next tab'],
"      \ 'N' : [':XTabMoveBufferNext'      , 'buffer->'],
"      \ 't' : [':tabnew'                  , 'new tab'],
"      \ 'p' : [':tabprevious'             , 'prev tab'],
"      \ 'P' : [':XTabMoveBufferPrev'      , '<-buffer'],
"      \ 'x' : [':XTabPinBuffer'           , 'pin buffer'],
"      \ }
"
"" w is for wiki
"let g:which_key_map.w = {
"      \ 'name' : '+wiki' ,
"      \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
"      \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
"      \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
"      \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
"      \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
"      \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
"      \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
"      \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
"      \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
"      \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
"      \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
"      \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
"      \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
"      \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
"      \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
"      \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
"      \ }

let g:which_key_map.P = {
      \ 'name' : '+spell' ,
      \ 'o' : [':set spell | set spelloptions=camel | :hi SpellBad gui=undercurl guibg=#552222 ctermbg=224', 'on'],
      \ 'x' : [':set nospell', 'off'],
      \ 's' : ['z=', 'suggest (z=)'],
      \ 'a' : ['zg', 'add to dict (zg)'],
      \ }

"let g:which_key_map.p = {
"      \ 'name' : '+spellunker' ,
"      \ 't' : ['ZT', 'toggle'],
"      \ 's' : ['ZL', 'suggest'],
"      \ }


let g:which_key_map.t = {
      \ 'name' : '+tab' ,
      \ 'n' : [':tabnew .', 'new (:tabnew .)'],
      \ 'x' : [':bn', 'next (:bn)'],
      \ 'p' : [':bp', 'previous (:bp)'],
      \ 'c' : [':bd', 'close (:bd)'],
      \ }

let g:which_key_map.n = {
      \ 'name' : '+navigate' ,
      \ 'W' : ['<c-w>w', 'Next window (ctrl+ww)'],
      \ 'w' : ['w', 'next word (w)'],
      \ 'p' : ['b', 'previous word (b)'],
      \ '0' : ['0', 'begin of line (0)'],
      \ '$' : ['$', 'end of line ($)'],
      \ 'f' : ['<c-f>', 'page forward (ctrl+f)'],
      \ 'b' : ['<c-b>', 'page back (ctrl+b)'],
      \ 'd' : ['<c-d>', '½ page forward (ctrl+d)'],
      \ 'u' : ['<c-u>', '½ page back (ctrl+u)'],
      \ 'o' : ['<c-o>', 'jump back (ctrl+o)'],
      \ 'I' : ['<c-i>', 'jump forward (ctrl+i)'],
      \ 'j' : ['<c-]>', 'jump (ctrl+]) (mm)'],
      \ 'g' : ['gg', 'begin of file (gg)'],
      \ 'e' : ['G', 'end of file (G)'],
      \ 'D' : ['gd', 'go to definition (gd)'],
      \ 'J' : [':AnyJump', 'any jump (leader j)'],
      \ }

let g:which_key_map.X = {
      \ 'name' : '+utils' ,
      \ 'c' : ['YP', 'copy line (YP)'],
      \ 'd' : ['dd', 'delete line'],
      \ 'p' : ['<c-g>', 'file path (1 ctrl+g)'],
      \ 'l' : ['yyp', 'duplicate line (yyp)'],
      \ 'g' : ['gf', 'go to file under curser (gf)'],
      \ 'b' : ['C-o', 'jump back (ctrl+o)'],
      \ 'r' : [':Rg', 'find everywhere (:Rg)'],
      \ 'i' : [':BLines', 'find in buffer (:BLines)'],
      \ 'w' : [':ciw', 'change word (ciw)'],
      \ 'o' : ["y'>p", "copy selected block (y'>p)"],
      \ }

let g:which_key_map.W = {
      \ 'name' : '+whitespace' ,
      \ 's' : [':set listchars=space:·,tab:→\ ,trail:␣,precedes:«,extends:»,eol:⏎ | :set list', 'show'],
      \ 'h' : [':set listchars& | :set nolist', 'hide'],
      \ 't' : [':set showtabline=0', 'hide tabs'],
      \ 'z' : [':set showtabline=2', 'show tabs'],
      \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
