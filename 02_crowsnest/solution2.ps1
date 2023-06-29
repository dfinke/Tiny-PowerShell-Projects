
param (
    [Parameter()]
    [string]$something
)

$vowels = "aeiou".ToCharArray()

$word = 'a'
if ($vowels -contains $something[0]) {
    $word = 'an'
}

return "Ahoy, Captain, $word $something off the larboard bow!"
