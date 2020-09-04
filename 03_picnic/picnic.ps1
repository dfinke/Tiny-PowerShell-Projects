param(
    [Switch]$Sorted
)

$list = $args
if ($Sorted) {
    $list = $list | Sort-Object
}

$template = "You are bringing {0}."

switch ($list.Count) {
    1 {
        $template -f $list -join '' 
    }
    2 {
        $list[-1] = "and " + $list[-1]
        $template -f ($list -join ' ')
    }
    default {
        $list[-1] = "and " + $list[-1]
        $template -f ($list -join ', ')
    }
}
