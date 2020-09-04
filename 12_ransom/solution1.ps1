param(
    [Parameter(Mandatory)]
    $text,
    $seed
)

if ($seed) { $null = Get-Random -SetSeed $seed }

if (Test-Path $text) { $text = Get-Content -Raw $text }
function choose {
    param($char)

    if (Get-Random -Minimum 0 -Maximum 2) {
        [char]::ToUpper($char)
    }
    else {
        [char]::ToLower($char)        
    }
}

$ransom = @()

foreach ($char in $text.ToCharArray()) {
    $ransom += choose $char
}

-join $ransom