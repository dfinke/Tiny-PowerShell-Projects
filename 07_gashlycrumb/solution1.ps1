<#

Author:            Doug Finke
Email:             finked@hotmail.com

Blog:              https://dfinke.github.io/
Twitter:           https://twitter.com/dfinke
GitHub:            https://github.com/dfinke
YouTube:           https://www.youtube.com/dougfinke

PowerShell Meetup: https://www.meetup.com/NycPowershellMeetup/

LinkedIn:          https://www.linkedin.com/in/douglasfinke/
#>

param(
    $vars,
    $file = "$PSScriptRoot\gashlycrumb.txt"
)

foreach ($item in $vars) {
    $r = Get-Content $file | Where-Object { $_ -match "^$item " }
    if($r) {
        $r
    } else {
        'I do not know "{0}".' -f $item
    }
}
