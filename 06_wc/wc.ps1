param(
    [Parameter(ValueFromPipeline)]
    $file
)

Begin {

}

Process {
    if (Test-Path $file) {
        $contents = Get-Content -Raw $file
    }
    else {
        $contents = $file
    }
}

End {
    $lines = 0
    $words = 0
    $characters = 0
    
    if ($null -ne $contents) {
        $contents = $contents.Trim()

        $lines = $contents.Split("`n").Count
        $words = [regex]::Split($contents, '\W+').Count
        $characters = $contents.ToCharArray().Count
    }

    [PSCustomObject]@{
        lines      = $lines
        words      = $words
        characters = $characters
        name       = $file
    }
}