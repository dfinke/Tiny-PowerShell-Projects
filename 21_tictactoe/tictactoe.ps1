<#

Author:            Doug Finke
Email:             finked@hotmail.com

Blog:              https://dfinke.github.io/
Twitter:           https://twitter.com/dfinke
GitHub:            https://github.com/dfinke
YouTube:           https://www.youtube.com/dougfinke

PowerShell Meetup: https://www.meetup.com/NycPowershellMeetup/

LinkedIn:          https://www.linkedin.com/in/douglasfinke/
#>

param(
    $board = '.' * 9,
    [ValidateSet('X', 'O')]
    $player,
    [ValidateRange(1, 9)]
    $cell
)

function Update-BoardPosition {
    param(
        $target,
        $position,
        $character
    )
    
    $target = $target.ToCharArray()
    $target[$position] = $character

    -join $target
}

function Format-Board {
    param($board)

    $bar = '-------------'
    $cellsTmpl = '| {0} | {1} | {2} |'

    $cells = for ($i = 0; $i -lt $board.Length; $i++) { 
        $currenChar = $board[$i]
        if ($currenChar -eq '.') {
            $i + 1
        }
        else {
            $currenChar
        }
    }

    $(
        $bar
        $cellsTmpl -f $cells[0..2]
        $bar
        $cellsTmpl -f $cells[3..5]
        $bar
        $cellsTmpl -f $cells[6..8]
        $bar    
    ) -join "`n"
}

function Find-Winner {
    param($board)

    $winning = $(
        , (0, 1, 2)
        , (3, 4, 5)
        , (6, 7, 8)
        , (0, 3, 6)
        , (1, 4, 7)
        , (2, 5, 8)
        , (0, 4, 8)
        , (2, 4, 6)
    )

    foreach ($player in 'X', 'O') {
        foreach ($item in $winning) {
            $i, $j, $k = $item
            $combo = $board[$i], $board[$j], $board[$k]

            if (-join $combo -eq $player + $player + $player) {
                return $player                
            }
        }
    }
}

if (!($board -cmatch "^[.XO]{9}$")) {
    throw ('-board "{0}" must be 9 characters of ., X, O' -f $board)
}

if ($player -and $cell) {
    $board = Update-BoardPosition $board ($cell - 1) $player.ToUpper()
}

Format-Board $board

$winner = Find-Winner $board
if ($winner) {
    "$winner has won!"
}
else {
    "No winner."
}

