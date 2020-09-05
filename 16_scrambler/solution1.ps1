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
    $text,
    $seed
)

function Invoke-Scramble {
    param($word)

    if ($word.Length -gt 3 -and [regex]::match($word, "\w+")) {
        $middle = $word.Substring(1, $word.Length - 2)    
        $random = $middle.ToCharArray() | Sort-Object { Get-Random }
            
        $word[0] + (-join $random) + $word[-1]
    }
    else {
        $word
    }
}

if ($seed) { $null = Get-Random -SetSeed $seed }

$pattern = "([a-zA-Z](?:[a-zA-Z']*[a-zA-Z])?)"

-join $(foreach ($word in [regex]::Split($text, $pattern)) {
        Invoke-Scramble $word
    })
