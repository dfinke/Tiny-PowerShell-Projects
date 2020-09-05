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
    [ValidateRange(1, 12)]
    [int]$num = 12,
    $outFile
)

function verse {
    param($day)

    $ordinal = 'first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh',
    'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth'

    $gifts = 'A partridge in a pear tree.',
    'Two turtle doves,',
    'Three French hens,',
    'Four calling birds,',
    'Five gold rings,',
    'Six geese a laying,',
    'Seven swans a swimming,',
    'Eight maids a milking,',
    'Nine ladies dancing,',
    'Ten lords a leaping,',
    'Eleven pipers piping,',
    'Twelve drummers drumming,'

    $lines = @(
        "On the $($ordinal[$day]) day of Christmas,",
        'My true love gave to me,'
    )    
    
    $reversedGifts = $gifts[0..$day]
    [array]::Reverse($reversedGifts)
    $lines += $reversedGifts    
    
    if ($day -ge 1) {
        $lines[-1] = 'And ' + $lines[-1].ToLower()
    }

    $lines
}

$result = 0..($num - 1) | ForEach-Object {
    verse $_
}

if ($outFile) {
    $result | Set-Content $outFile
}
else {
    $result -join "`r`n"
}
