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
    [int]$number = 3,
    [int]$adjectives = 2,
    [int]$seed
)

Import-Module ..\UtilityModules\UtilityModules.psm1

$adjectiveList = $(
    'bankrupt'
    'base'
    'caterwauling'
    'corrupt'
    'cullionly'
    'detestable'
    'dishonest'
    'false'
    'filthsome'
    'filthy'
    'foolish'
    'foul'
    'gross'
    'heedless'
    'indistinguishable'
    'infected'
    'insatiate'
    'irksome'
    'lascivious'
    'lecherous'
    'loathsome'
    'lubbery'
    'old'
    'peevish'
    'rascaly'
    'rotten'
    'ruinous'
    'scurilous'
    'scurvy'
    'slanderous'
    'sodden-witted'
    'thin-faced'
    'toad-spotted'
    'unmannered'
    'vile wall-eyed'
)

$nouns = $(
    'Judas'
    'Satan'
    'ape'
    'ass'
    'barbermonger'
    'beggar'
    'block'
    'boy'
    'braggart'
    'butt'
    'carbuncle'
    'coward'
    'coxcomb'
    'cur'
    'dandy'
    'degenerate'
    'fiend'
    'fishmonger'
    'fool'
    'gull'
    'harpy'
    'jack'
    'jolthead'
    'knave'
    'liar'
    'lunatic'
    'maw'
    'milksop'
    'minion'
    'ratcatcher'
    'recreant'
    'rogue'
    'scold'
    'slave'
    'swine'
    'traitor'
    'varlet'
    'villain'
    'worm'
)

if ($seed) { $null = Get-Random -SetSeed $seed }

1..$number | ForEach-Object {
    $choices = Get-RandomSample $adjectiveList $adjectives
    "You {0} {1}!" -f ($choices -join ', '), ($nouns | Get-Random )
}
