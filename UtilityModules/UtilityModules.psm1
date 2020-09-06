function Get-RandomSample {
    <#
    .Synopsis 
        Random sampling and randomly pick more than one element from the list without repeating elements
    .Description
        The $list can be any sequence such as list, set from which you want to select a k length number
        The k is the number of random items you want to select from the sequence
        Get-RandomSample doesn’t repeat the items in the result list
    .Example
    Get-RandomSample 20, 40, 80, 100, 120 3
20
100
120

    .Example
    Get-RandomSample (1..10) 3
10
8
7

    .Example
    Get-RandomSample a, b, c 3
c
a
b

    #>
    param(
        $list,
        $k
    )

    if ($k -gt $list.Count) { throw "k must be less than the size of the list" }

    # if($k -eq 0) {return $list}
    if($k -eq 0) {return $null}
    
    $h = @{}
    
    do {
        $h.($list | Get-Random) = $null
    } until($h.Keys.Count -eq $k)
    
    $h.Keys
}

function Get-AsciiLowercase {
    <#
    .Synopsis 
        Gets lowercase letters 'abcdefghijklmnopqrstuvwxyz'
    #>
    -join ([int][char]'a'..[int][char]'z' | ForEach-Object { [char]$_ })
}

function Get-AsciiUppercase {
    <#
    .Synopsis 
        Gets lowercase letters 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    #>
    -join ([int][char]'A'..[int][char]'Z' | ForEach-Object { [char]$_ })
}

function Get-AsciiLetters {
    <#
    .Synopsis 
        Concatenation of Get-AsciiLowercase and Get-AsciiUppercase
    #>
    (Get-AsciiLowercase) + (Get-AsciiUppercase)
}

function Get-AsciiPunctuation {
    <#
    .Synopsis 
        Get all Ascii punctuation
    #>    
    $ascii = 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 92, 93, 94, 95, 96, 123, 124, 125, 126

    $(foreach ($item in $ascii) {
        [char]$item
    }) -join ''
}

function Get-Digits {
    '0123456789'
}

function Invoke-MakeTranslation {
    <#
        .Synopsis
         Returns a translation table that maps each character in the intabstring into the character at the same position in the outtabstring
    #>
    param(
        [string]$inTabString,
        [string]$outTabString
    )

    if ($inTabString.Length -ne $outTabString.Length) {
        throw "both need to be the same length"        
    }

    $count = $inTabString.Length
    $h = @{}

    for ($i = 0; $i -lt $count; $i++) {
        $key = $inTabString[$i]
        $h.$key = $outTabString[$i]
    }

    $h
}

function Invoke-Translate {
    <#
        .Synopsis
        Returns a string that is modified string of givens string according to given translation mappings
    #>
    param(
        $text,
        [hashtable]$translateMap
    )

    -join $(
        for ($i = 0; $i -lt $text.Length; $i++) {
            $currentChar = $text[$i]
            $newChar = $translateMap.$currentChar
            if ($newChar) {
                $newChar
            }
            else {
                $currentChar
            }
        }
    )
}