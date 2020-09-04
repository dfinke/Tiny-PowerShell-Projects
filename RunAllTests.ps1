foreach ($target in Get-ChildItem -Directory | Where-Object { $_.name -match '^\d{2}' }) {
    Push-Location
    Set-Location $target
    .\alltest.ps1
    Pop-Location
}