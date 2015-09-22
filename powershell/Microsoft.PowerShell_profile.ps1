function shorten-path([string] $path) {
   $loc = $path.Replace($HOME, '~');
   # remove prefix for UNC paths
   $loc = $loc -replace '^[^:]+::', '';
   # make path shorter like tabs in Vim,
   # handle paths starting with \\ and . correctly
   return ($loc -replace '\\(\.?)([^\\])[^\\]*(?=\\)','\$1$2');
}

. (Resolve-Path "$env:LOCALAPPDATA\GitHub\shell.ps1")
Import-Module (Resolve-Path "$env:USERPROFILE\Documents\WindowsPowerShell\Modules\posh-git")
Import-Module (Resolve-Path "$env:USERPROFILE\Documents\WindowsPowerShell\Modules\PSColor")

function prompt {
# our theme
   $cdelim = [ConsoleColor]::Black;
   $chost = [ConsoleColor]::Green;
   $cloc = [ConsoleColor]::Cyan;

   Write-Host "$([char]0x0A7) " -n -f $cloc;
   Write-Host "[$(get-date)] " -n -f $cloc;
   Write-Host ([net.dns]::GetHostName()) -n -f $chost;
   Write-Host ' {' -n -f $cdelim;
   Write-Host (shorten-path (pwd).Path) -n -f $cloc;
   Write-Host '}' -n -f $cdelim;
   Write-VcsStatus
   Write-Host '';
   Write-Host '> ' -n -f $cloc;
   return ' ';
}
function shorten-path([string] $path) {
   $loc = $path.Replace($HOME, '~');
   # remove prefix for UNC paths
   $loc = $loc -replace '^[^:]+::', '';
   # make path shorter like tabs in Vim,
   # handle paths starting with \\ and . correctly
   return ($loc -replace '\\(\.?)([^\\])[^\\]*(?=\\)','\$1$2');
}

# http://psget.net/
# Install-Module PSSudo
# Install-Module PSGnuwin32
# Install-Module PowerLS
# Install-Module posh-git
#Install-Module PSColor
