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
    $text
)

function Invoke-Fry {
    param($word)

    if ($word.ToLower() -eq 'you') {
        $word[0] + "'all"
    }

    if ($word.EndsWith('ing')) {
        if ($word.Substring(0, ($word.Length - 3)).IndexOfAny('AaEeIiOoUuYy'.ToCharArray()) -gt -1) {
            $word.Substring(0, ($word.Length - 1)) + "'"
        }
        else {
            $word
        }
    }    
}

if (Test-Path $text -ErrorAction SilentlyContinue) {
    $text = Get-Content $text
}

$(foreach ($line in $text.Split("`n")) {
        foreach ($word in [regex]::Split($line.Trim(), '\W+')) {            
            Invoke-Fry $word
        }
    }) -join ' '
