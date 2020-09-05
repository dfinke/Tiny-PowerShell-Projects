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
    [Parameter(Mandatory)]    
    # A word
    $word
)

$article = if ('aeiou'.IndexOf($word.ToLower()[0]) -ge 0) {
    "an"
}
else {
    "a"
}

"Ahoy, Captain, $($article) $($word) off the larboard bow!"
