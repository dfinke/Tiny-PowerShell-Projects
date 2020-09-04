param(
    $s,
    [ValidateSet('a', 'e', 'i', 'o', 'u')]
    $vowel = 'a'
)

if (Test-Path $s) {
    $s = Get-Content -Raw $s
}

$evaluator = {
    param($targetMatch)

    if ([char]::IsUpper($targetMatch.value)) {
        $vowel.ToUpper()
    }
    else {
        $vowel.ToLower()
    }
}

[regex]::Replace($s, "(?i)[aeiou]", $evaluator)