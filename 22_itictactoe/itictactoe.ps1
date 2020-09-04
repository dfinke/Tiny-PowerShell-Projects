class State {
    $board = '.' * 9
    $player = 'X'
    [bool]$quit
    [bool]$draw 
    $error 
    $winner    
}

function Test-IsNumeric ($Value) {
    $Value -match "^[\d\.]+$"
}

function Update-BoardPosition {
    param(
        $board,
        $position,
        $player
    )
    
    $board = $board.ToCharArray()
    $board[$position] = $player

    -join $board
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

function Get-Move {
    param($state)

    $player = $state.player
    $cell = Read-Host "Player $($state.player), what is your move? [q to quit]"

    if ($cell -eq 'q') {
        $state.quit = $true
        return $state
    }

    if (!(Test-IsNumeric $cell) -or !($cell -in 1..9)) {
        $state.error = "Invalid cell `"$cell`", please use 1-9"
        return $state
    }

    $cell_num = [int] $cell

    if ($state.board[$cell_num - 1] -match '[XO]') {
        $state.error = "Cell `"$cell`" already taken"
        return $state
    }

    $board = $state.board

    $board = Update-BoardPosition $board ($cell_num - 1) $player

    $state.board = $board
    $state.player = if ($player -eq 'X') { 'O' } else { 'X' }
    $state.winner = Find-Winner $board
    $state.draw = $board.IndexOf('.') -eq -1
    $state.error = $null

    return $state
}

$state = [State]::new()

while ($true) {
    Format-Board  $state.board

    if ($state.error) {
        $state.error
    }
    elseif ($state.winner) {
        "$($state.winner) has won!"
        break
    }

    $state = Get-Move $state

    if ($state.quit) {
        'You lose!'
        break
    }
    elseif ($state.draw) {
        "All right, we'll call it a draw."
        break
    }
}