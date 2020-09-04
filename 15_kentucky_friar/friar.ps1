param(
    $text
)

function Invoke-Fry {
    param($word)

    if ($word.ToLower() -eq 'you') {
        $word[0] + "'all"
    }

    if ($word.EndsWith('ing')) {
        $word.Substring(0, ($word.Length - 1)) + "'"
    }
}

if (Test-Path $text -ErrorAction SilentlyContinue) {
    $text = Get-Content $text
}

$(foreach ($line in $text.Split("`n")) {
        foreach ($word in [regex]::Split($line.Trim(), '\W+')) {            
            Invoke-Fry $word
        }
    }) -join ' '