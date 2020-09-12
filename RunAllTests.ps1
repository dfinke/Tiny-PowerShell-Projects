foreach ($target in Get-ChildItem -Directory | Where-Object { $_.name -match '^\d{2}' }) {
    Push-Location
    Set-Location $target
    ./AllTest.ps1
    Pop-Location
}