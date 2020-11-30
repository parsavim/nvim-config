" Recursively read a directory, returning a relative path
" to all non-directory files starting at `rootdir`
function Rereaddir(rootdir)
	let file_paths = []

	for ent in readdir(a:rootdir)
		" Concatenate directory path to entry
		let ent = printf('%s/%s', a:rootdir, ent)

		let file_paths += isdirectory(ent) ? Rereaddir(ent) : [ent]
	endfor

	return file_paths
endfunction
		

let g:nvim_config_root = expand('<sfile>:p:h')

let s:scripts_dir = printf("%s/%s", g:nvim_config_root, "scripts")

let s:source_files = Rereaddir(s:scripts_dir)
call filter(s:source_files, 'v:val[-4:] ==# ".vim"')

for s:source_file in s:source_files
	execute 'source ' . s:source_file
endfor



