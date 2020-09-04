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