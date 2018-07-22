" AleFix settings for Python
let b:ale_linters = ['flake8']
let b:ale_fixers = [
\   'remove_trailing_lines',
\   'isort',
\   'ale#fixers#generic_python#BreakUpLongLines',
\   'yapf',
\]

nnoremap <buffer> <silent> <LocalLeader>= :ALEFix<CR>
