Describe "Test for 06_wc" {

    BeforeAll {
        $Script:prg = ".\wc.ps1"

        $Script:empty = './inputs/empty.txt'
        $Script:one_line = './inputs/one.txt'
        $Script:two_lines = './inputs/two.txt'
        $Script:fox = '../inputFiles/fox.txt'
        $Script:sonnet = '../inputFiles/sonnet-29.txt'
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test empty" {

        $actual = &$Script:prg $Script:empty

        $actual.lines | Should -Be 0
        $actual.words | Should -Be 0
        $actual.characters | Should -Be 0
        $actual.name | Should -BeExactly $Script:empty
    }

    It "Test one" {

        $actual = &$Script:prg $Script:one_line

        $actual.lines | Should -Be 1
        $actual.words | Should -Be 1
        $actual.characters | Should -Be 1
        $actual.name | Should -BeExactly $Script:one_line
    }

    It "Test two" -skip {
        $actual = &$Script:prg $Script:two_lines

        $actual.lines | Should -Be 2
        $actual.words | Should -Be 2
        $actual.characters | Should -Be 4
        $actual.name | Should -BeExactly $Script:two_lines
    }

    It "test_fox" {

        $actual = &$Script:prg $Script:fox

        $actual.lines | Should -Be 1
        $actual.words | Should -Be 10
        $actual.characters | Should -Be 44
        $actual.name | Should -BeExactly $Script:fox
    }

    It "test_more" -skip {
        $actual = &$Script:prg $Script:fox, $Script:sonnet

        $actual.Count | Should -Be 2
        # $actual.lines | Should -Be 1
        # $actual.words | Should -Be 10
        # $actual.characters | Should -Be 44
        # $actual.name | Should -BeExactly $Script:fox

        # """Test on more than one file"""

        # rv, out = getstatusoutput(f'{prg} {fox} {sonnet}')
        # expected = ('       1       9      45 ../inputs/fox.txt\n'
        #     '      17     118     661 ../inputs/sonnet-29.txt\n'
        #     '      18     127     706 total')
        # assert rv == 0
        # assert out.rstrip() == expected
    }
}