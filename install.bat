mkdir vim/bundle
FOR /F "tokens=*" %%a in ('chdir') do SET moeryn_path=%%a
echo %moeryn_path%

mklink /d vim\bundle\a                 %moeryn_path%\submodules\vim\a
mklink /d vim\bundle\bufexplorer       %moeryn_path%\submodules\vim\bufexplorer
mklink /d vim\bundle\ctrlp             %moeryn_path%\submodules\vim\ctrlp
mklink /d vim\bundle\htlm5             %moeryn_path%\submodules\vim\htlm5
mklink /d vim\bundle\nerdcommenter     %moeryn_path%\submodules\vim\nerdcommenter
mklink /d vim\bundle\nerdtree          %moeryn_path%\submodules\vim\nerdtree
mklink /d vim\bundle\seoul256          %moeryn_path%\submodules\vim\seoul256
mklink /d vim\bundle\supertab          %moeryn_path%\submodules\vim\supertab
mklink /d vim\bundle\tern              %moeryn_path%\submodules\vim\tern
mklink /d vim\bundle\vim-airline       %moeryn_path%\submodules\vim\vim-airline
mklink /d vim\bundle\vim-fugitive      %moeryn_path%\submodules\vim\vim-fugitive
mklink /d vim\bundle\vim-gitgutter     %moeryn_path%\submodules\vim\vim-gitgutter
mklink /d vim\bundle\vim-javascript    %moeryn_path%\submodules\vim\vim-javascript
mklink /d vim\bundle\vim-man           %moeryn_path%\submodules\vim\vim-man
mklink /d vim\bundle\vim-signature     %moeryn_path%\submodules\vim\vim-signature
mklink /d vim\bundle\vim-spacebars     %moeryn_path%\submodules\vim\vim-spacebars
::mklink /d vim\bundle\editorconfig-vim  %moeryn_path%\submodules\vim\editorconfig-vim
::mklink /d vim\bundle\syntastic         %moeryn_path%\submodules\vim\syntastic
::mklink /d vim\bundle\ultisnips         %moeryn_path%\submodules\vim\ultisnips
