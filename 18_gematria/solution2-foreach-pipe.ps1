function Invoke-Word2num {
    param(
        $word
    )

    $word = $word -replace '[^A-Za-z0-9]', ''

    $word.ToCharArray() | 
        ForEach-Object { $sum = 0 } { $sum += [int]$_ } { $sum }
}

function Invoke-Gematria {
    param(
        $word
    )
 
    if (Test-Path $word) {
        $word = Get-Content $word
    }

    foreach ($line in $word) {
        $(foreach ($targetWord in $line.Split()) {
                Invoke-Word2num $targetWord    
            }) -join ' '       
    }
}