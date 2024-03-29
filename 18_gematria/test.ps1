Describe "Test for 18_gematria" {
    BeforeAll {
        $Script:prg = ".\gematria.ps1"
        . "$PSScriptRoot\gematria.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test text" {
        #$actual = &$Script:prg "foo bar baz"
        $actual = Invoke-Gematria "foo bar baz"

        $actual | Should -BeExactly '324 309 317'
    }

    It "Test fox" {
        $actual = Invoke-Gematria ..\inputFiles\fox.txt
        $actual | Should -BeExactly '289 541 552 333 559 444 321 448 314'
    }

    It "Test spiders" {
        $actual = Invoke-Gematria ..\inputFiles\spiders.txt

        $actual.Count | Should -Be 3
        $actual[0] | Should -BeExactly '405 579 762'
        $actual[1] | Should -BeExactly '73 421 548'
        $actual[2] | Should -BeExactly '862'
    }

    It "Test Invoke-Word2Num" {

        Invoke-Word2Num 'a'       | Should -BeExactly '97'
        Invoke-Word2Num 'abc'     | Should -BeExactly '294'
        Invoke-Word2Num "ab'c"    | Should -BeExactly '294'
        Invoke-Word2Num "4a-b'c," | Should -BeExactly '346'
    }
}
