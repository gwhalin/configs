:let java_highlight_java_lang_ids=1
:let java_highlight_functions="style"
:let java_highlight_debug=1
:let java_highlight_all=1
:let java_minlines = 150
:hi link javaParen javaStorageClass
:hi link javaParen1 Label
:hi link javaParen2 javaComment
"set makeprg=/usr/local/ant/bin/ant\ -f\ /usr/local/chapstick_java/build.xml\ compile
set makeprg=ant\ -quiet\ -emacs\ -f\ /usr/local/chapstick_java/build.xml\ compile
"set makeprg=jikes\ -nowarn\ -Xstdout\ +E\ -classpath\ $CLASSPATH\ %
"set errorformat=%f:%l:%c:%*\d:%*\d:%*\s%m
set include=^#\s*import
set includeexpr=substitute(v:fname,'\\.','/','g')
