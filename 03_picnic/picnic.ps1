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
    [Switch]$Sorted
)

$list = $args
if ($Sorted) {
    $list = $list | Sort-Object
}

$template = "You are bringing {0}."

switch ($list.Count) {
    1 {
        $template -f $list -join '' 
    }
    2 {
        $list[-1] = "and " + $list[-1]
        $template -f ($list -join ' ')
    }
    default {
        $list[-1] = "and " + $list[-1]
        $template -f ($list -join ', ')
    }
}

