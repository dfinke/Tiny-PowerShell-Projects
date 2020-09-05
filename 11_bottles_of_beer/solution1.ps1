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
    [ValidateRange(1, [int]::MaxValue)]
    $num = 10
)

$result = for ($bottle = $num; $bottle -gt 0; $bottle--) {
    $nextBottle = $bottle - 1

    $s1 = ''
    $s2 = ''
    $numNext = 'No more'

    if ($bottle -gt 1) { $s1 = 's' }
    if ($nextBottle -ne 1) { $s2 = 's' }

    if ($nextBottle -gt 0) { $numNext = $nextBottle }

    @"
$bottle bottle$($s1) of beer on the wall,
$bottle bottle$($s1) of beer,
Take one down, pass it around,
$numNext bottle$($s2) of beer on the wall!

"@
}

-join $result
