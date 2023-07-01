[CmdletBinding()]
param (
    [Parameter()]
    [string]$something
)

$returnValue = "Ahoy, Captain, a $something off the larboard bow!"
$vowels = "aeiou".ToCharArray()
if ($something[0] -in $vowels) {
    $returnValue = "Ahoy, Captain, an $something off the larboard bow!"
}

return $returnValue