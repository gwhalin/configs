" change tab to complete
function InsertTabWrapper(direction)
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
	"if !col || strpart(getline('.'), col-1, col) =~ '\s'
		return "\<tab>"
	elseif "backward" == a:direction
		return "\<c-p>"
	elseif "forward" == a:direction
		return "\<c-n>"
	else
		return "\<c-x>\<c-k>"
	endif
endfunction

" toggle tab completion
function! ToggleTabCompletion()
	if mapcheck("\<tab>", "i") != ""
		:iunmap <tab>
		:iunmap <s-tab>
		:iunmap <c-tab>
		echo "tab completion off"
	else
		:imap <tab> <c-n>
		:imap <s-tab> <c-p>
		:imap <c-tab> <c-x><c-l>
		echo "tab completion on"
	endif
endfunction
