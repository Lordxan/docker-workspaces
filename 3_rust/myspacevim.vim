" use <tab> for trigger completion and navigate to the next complete item
" (https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-tab-or-custom-key-for-trigger-completion)
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! myspacevim#after() abort

  inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#snippet#next()\<CR>" :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh() 

  inoremap <silent><expr> <S-Tab>
      \ coc#pum#visible() ? coc#pum#prev(1) :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#snippet#prev()\<CR>" :
      \ CheckBackspace() ? "\<S-Tab>" :
      \ coc#refresh()
  
endfunction
