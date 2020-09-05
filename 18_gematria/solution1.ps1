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

function Invoke-Word2num {
    param(
        $word
    )

    $word = $word -replace '[^A-Za-z0-9]', ''

    $sum = 0
    foreach ($char in $word.ToCharArray()) {
        $sum += [int]$char
    }
    $sum
}

function Invoke-Gematria {
    param(
        $word
    )
 
    if (Test-Path $word) {
        $word = Get-Content $word
    }

    foreach ($line in $word) {
        $(foreach ($targetWord in $line.Split()) {
                Invoke-Word2num $targetWord    
            }) -join ' '       
    }
}
