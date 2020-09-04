param(
    $vars,
    $file = "$PSScriptRoot\gashlycrumb.txt"
)

foreach ($item in $vars) {
    $r = Get-Content $file | Where-Object { $_ -match "^$item " }
    if($r) {
        $r
    } else {
        'I do not know "{0}".' -f $item
    }
}