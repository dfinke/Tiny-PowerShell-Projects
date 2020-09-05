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
    $file,
    [System.Collections.ArrayList]$inputs
)

function Find-Brackets {
    param(
        $text
    )

    $start = $text.IndexOf('<')
    $stop = $text.IndexOf('>')    

    if ($start -ge 0 -and $stop -ge 0) {
        return $start, $stop
    }
}

$text = Get-Content -Raw $file
$hadPlaceholders = $false

while ($true) {
    $brackets = Find-Brackets $text

    if (!$brackets) {
        break 
    }

    $start, $stop = $brackets

    $placeholder = -join $text[$start..($stop - 1)]
    $pos = $placeholder.Substring(1, ($placeholder.Length - 1))

    $answer = $inputs[0]
    $inputs.RemoveAt(0)
    
    $text = (-join $text[0..($start - 1)]) + $answer + (-join $text[($stop + 1)..$text.Length])

    $hadPlaceholders = $true
}

if ($hadPlaceholders) { 
    $text
}
else {
    "$($file) has no placeholders."
}