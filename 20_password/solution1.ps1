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
    $file='../inputFiles/words.txt',
    $num = 3,
    $numWords = 4,
    $minWordLength = 3,
    $maxWordLength = 6,
    $seed = ([System.Environment]::TickCount),
    [Switch]$l33t
)

function Get-Ransom {
    <#
        .Synopsis
        Randomly choose an upper or lowercase letter to return
    #>
    param(
        $text
    )
    
    -join $(
        foreach ($c in $text.ToCharArray()) {
            if ((Get-Random -Minimum 0 -Maximum 2) -eq 1) {        
                [char]::ToLower($c)
            }
            else {
                [char]::ToUpper($c)            
            }
        }
    )
}

Import-Module "$PSScriptRoot\..\UtilityModules\UtilityModules.psm1"

$words = New-Object System.Collections.Generic.HashSet[string]
$TextInfo = (Get-Culture).TextInfo

foreach ($targetFile in $file) {
    $targetFile = Resolve-Path $targetFile
    foreach ($line in [System.IO.File]::ReadAllLines($targetFile)) {        
        foreach ($word in ($line.ToLower().Split() -replace '[^a-zA-Z]', '' ).Where( { $_.Length -ge $minWordLength -and $_.Length -le $maxWordLength })) {
            $null = $words.Add($TextInfo.ToTitleCase($word))
        }        
    }    
}

$words = $words | Sort-Object

$totalWords = $words.Count
$rnd = [Random]::new($seed)

for ($i = 0; $i -lt $num; $i++) {
    $h = @{}
    do {
        $h.($words[$rnd.Next(0, $totalWords)]) = $null
    } until($h.Keys.Count -eq $numWords)
    
    -join $h.Keys    
}