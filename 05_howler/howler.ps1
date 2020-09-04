param(
    $targetInput,
    $outFile
)

if ( Test-Path $targetInput ) {
    $data = Get-Content -Raw $targetInput
}
elseif ($targetInput -is [string]) {
    $data = $targetInput
}

if ($outFile) {
    $data.ToUpper() | Set-Content $outFile -Encoding ascii
}
else {
    $data.ToUpper()
}