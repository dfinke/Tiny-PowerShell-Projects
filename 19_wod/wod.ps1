param(
    $file = '.\inputs\exercises.csv',
    $seed,
    $num = 4,
    [Switch]$easy
)

Import-Module ..\UtilityModules\UtilityModules.psm1

if ($seed) { $null = Get-Random -SetSeed $seed }

$exercises = $(foreach ($record in Import-Csv $file) {
        [int]$low, [int]$high = $record.reps.split('-')
        [int]$reps = Get-Random -Minimum $low -Maximum ($high + 1)
        
        if ($easy) {
            $reps /= 2
        }

        [PSCustomObject]@{
            Exercise = $record.exercise
            Reps     = $reps
        }
    })

Get-RandomSample $exercises $num