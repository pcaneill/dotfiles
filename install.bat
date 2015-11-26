@if "%INCLUDE%"=="" goto error

:: {{{ Vim

setlocal

FOR /F "tokens=*" %%a in ('chdir') do SET CONFIG_PATH=%%a
set HOME_DIR="C:\Users\pycan"
set VIM_INSTALL="C:\Vim\vim74"
set VS_BIN="C:\C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin"

:: Loading plugin
md vim/bundle
mklink /d vim\bundle\a                   %CONFIG_PATH%\submodules\vim\a
mklink /d vim\bundle\bufexplorer         %CONFIG_PATH%\submodules\vim\bufexplorer
mklink /d vim\bundle\ctrlp               %CONFIG_PATH%\submodules\vim\ctrlp
mklink /d vim\bundle\htlm5               %CONFIG_PATH%\submodules\vim\htlm5
mklink /d vim\bundle\nerdcommenter       %CONFIG_PATH%\submodules\vim\nerdcommenter
mklink /d vim\bundle\nerdtree            %CONFIG_PATH%\submodules\vim\nerdtree
mklink /d vim\bundle\seoul256            %CONFIG_PATH%\submodules\vim\seoul256
mklink /d vim\bundle\supertab            %CONFIG_PATH%\submodules\vim\supertab
mklink /d vim\bundle\vim-airline         %CONFIG_PATH%\submodules\vim\vim-airline
mklink /d vim\bundle\vim-fugitive        %CONFIG_PATH%\submodules\vim\vim-fugitive
mklink /d vim\bundle\vim-gitgutter       %CONFIG_PATH%\submodules\vim\vim-gitgutter
mklink /d vim\bundle\vim-javascript      %CONFIG_PATH%\submodules\vim\vim-javascript
mklink /d vim\bundle\vim-man             %CONFIG_PATH%\submodules\vim\vim-man
mklink /d vim\bundle\vim-signature       %CONFIG_PATH%\submodules\vim\vim-signature
mklink /d vim\bundle\vim-spacebars       %CONFIG_PATH%\submodules\vim\vim-spacebars
mklink /d vim\bundle\gtags               %CONFIG_PATH%\submodules\vim\gtags
mklink /d vim\bundle\delimitMate         %CONFIG_PATH%\submodules\vim\delimitMate
mklink /d vim\bundle\vim-perforce        %CONFIG_PATH%\submodules\vim\vim-perforce
mklink /d vim\bundle\vim-ps1             %CONFIG_PATH%\submodules\vim\vim-ps1
mklink /d vim\bundle\genutils            %CONFIG_PATH%\submodules\vim\genutils
mklink /d vim\bundle\syntax              %CONFIG_PATH%\submodules\vim\vim-cpp-enhanced-highlight
mklink /d vim\bundle\YouCompleteMe       %CONFIG_PATH%\submodules\vim\YouCompleteMe
mklink /d vim\bundle\badwolf             %CONFIG_PATH%\submodules\vim\badwolf
::mklink /d vim\bundle\syntastic         %CONFIG_PATH%\submodules\vim\syntastic
::mklink /d vim\bundle\ultisnips         %CONFIG_PATH%\submodules\vim\ultisnips

mklink /d %HOME_DIR%\vimfiles            %CONFIG_PATH%\vim
:: Do not copy directly until configuration of the vimrc does not exists
::xcopy vim\vimrc_work %HOME_DIR%\.vimrc

cd submodules\vim\gvim-fullscreen
cl.exe /LD user32.lib gdi32.lib gvimfullscreen.c
xcopy gvimfullscreen.dll %VIM_INSTALL%\gvimfullscreen.dll
del gvimfullscreen.obj
del gvimfullscreen.exp
del gvimfullscreen.dll
del gvimfullscreen.lib
cd ..\..\..\

endlocal

:: In order to install correctly YouCompleteMe when there are problem with the python libraries,
:: one could hardcode the path to the lib "C:\Python\2.7\libs\python27.lib"
:: and of the include

:: }}}

@exit /B 0

:error
@echo "Don't forget to set global variables"
@echo "Don't forget to run vcvars32.bat"

