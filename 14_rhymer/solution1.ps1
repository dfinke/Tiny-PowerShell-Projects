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
    $word
)

function Invoke-Stemmer {
    param($word)

    $word = $word.ToLower()

    $vowelPos = $(foreach ($vowel in 'aeiou'.ToCharArray()) {
            $word.IndexOf($vowel)
        }).Where( { $_ -gt -1 })
    
    if ($vowelPos) {
        $firstVowel = ($vowelPos | Measure-Object -Minimum).Minimum
    
        $word.Substring(0, $firstVowel)
        $word.Substring($firstVowel)
    }
    else {
        $word
    }    
}

if ($word) {
    [string[]]$prefixes = 'bcdfghjklmnpqrstvwxyz'.ToCharArray() + $(
        'bl br ch cl cr dr fl fr gl gr pl pr sc'
        'sh sk sl sm sn sp st sw th tr tw thw wh wr'
        'sch scr shr sph spl spr squ str thr'
    ).split()

    $start, $rest = Invoke-Stemmer $word

    if ($rest) {
        $(foreach ($p in $prefixes.where( { $_ -ne $start } )) {
                $p + $rest
            }) | Sort-Object
    }
    else {
        "Cannot rhyme '$word'"
    }
}
