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
    $file,
    $inputs
)

$adjective, $noun, $preposition = $inputs

(Get-Content -Raw $file) -Replace '<adjective>', $adjective -Replace '<noun>', $noun -Replace '<preposition>', $preposition
