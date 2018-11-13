" AleFix settings for Python
" let b:ale_linters = ['Flake8']
" let b:ale_fixers = [
" \   'remove_trailing_lines',
" \   'isort',
" \   'ale#fixers#generic_python#BreakUpLongLines',
" \   'yapf',
" \]
"
" nnoremap <buffer> <silent> <Leader>= :ALEFix<CR>

" flake8 settings
let b:ale_python_flake8_executable = 'python'
