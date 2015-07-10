"syn keyword cOperator  ssizeof fieldsizeof countof assert offsetof fieldtypeof bitsizeof
"syn keyword cStatement p_delete p_new p_new_raw p_clear p_realloc
"syn keyword cStatement mp_delete mp_new mp_new_raw
"syn keyword cStatement p_dup p_dupstr p_dupz
"syn keyword cStatement t_new t_new_raw t_new_extra t_fmt t_scope
"
"syn keyword isGlobal   _G
"syn match   isGlobal "\<[a-zA-Z_][a-zA-Z0-9_]*_g\>"
"
"syn keyword cType byte
"syn match cFunction "\<\([a-z][a-zA-Z0-9_]*\|[a-zA-Z_][a-zA-Z0-9_]*[a-z][a-zA-Z0-9_]*\)\> *("me=e-1
"syn match Function "\$\<\([a-z][a-zA-Z0-9_]*\|[a-zA-Z_][a-zA-Z0-9_]*[a-z][a-zA-Z0-9_]*\)\> *[({]"me=e-1
"syn match cType "\<[a-zA-Z_][a-zA-Z0-9_]*_[ftb]\>"
"
"hi def link isGlobal Function
"hi def link cStructure Type
"hi def link cStorageClass Statement
