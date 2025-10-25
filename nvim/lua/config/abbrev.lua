vim.cmd([[cabbrev <expr> w getcmdtype()==':' && getcmdline() == "'<,'>w" ? '<c-u>w' : 'w']])
