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
    $s,
    [ValidateSet('a', 'e', 'i', 'o', 'u')]
    $vowel = 'a'
)

if (Test-Path $s) {
    $s = Get-Content -Raw $s
}

$evaluator = {
    param($targetMatch)

    if ([char]::IsUpper($targetMatch.value)) {
        $vowel.ToUpper()
    }
    else {
        $vowel.ToLower()
    }
}

[regex]::Replace($s, "(?i)[aeiou]", $evaluator)
