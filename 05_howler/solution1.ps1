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
    $targetInput,
    $outFile
)

if ( Test-Path $targetInput ) {
    $data = Get-Content -Raw $targetInput
}
elseif ($targetInput -is [string]) {
    $data = $targetInput
}

if ($outFile) {
    $data.ToUpper() | Set-Content $outFile -Encoding ascii
}
else {
    $data.ToUpper()
}
