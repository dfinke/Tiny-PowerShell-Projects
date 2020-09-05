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
    $mutations = .1,
    $seed
)

Import-Module ..\UtilityModules\UtilityModules.psm1 -Force

if (Test-Path $text) {
    $text = Get-Content -Raw $text
}

if ($seed) { $null = Get-Random -SetSeed $seed }

$alpha = (Get-AsciiLetters) + (Get-AsciiPunctuation)
$lengthText = $text.Length
$numMutations = [math]::Round($mutations * $lengthText)
$newText = $text

$positionList = Get-RandomSample (0..($lengthText - 1)) $numMutations
foreach ($position in $positionList) {
    $newChar = $alpha.Replace($newText[$position], $null).ToCharArray() | Get-Random

    $first = $newText.Substring(0, $position)
    $rest = $newText.Substring($position + 1)    
    $newText = "{0}{1}{2}" -f $first, $newChar, $rest    
}

@"
You said: "{0}"
I heard : "{1}"
"@ -f $text, $newText
