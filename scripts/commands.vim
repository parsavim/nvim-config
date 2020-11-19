" delete all buffers except the current one 
command! BufOnly execute '%bdelete|edit #|normal `"'
