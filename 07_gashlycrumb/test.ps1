Describe "Test for 07_gashlycrumb" {
    BeforeAll {
        $Script:prg = ".\gashlycrumb.ps1"
    }

    It "Should exist" {
        Test-Path $Script:prg | Should -Be $true
    }

    It "Test a" {
        &$Script:prg a | Should -BeExactly 'A is for Amy who fell down the stairs.'
    }

    It "Test a" {
        $actual = &$Script:prg b, c  
        
        $actual[0] | Should -BeExactly 'B is for Basil assaulted by bears.'
        $actual[1] | Should -BeExactly 'C is for Clara who wasted away.'
    }

    It "Test y" {
        &$Script:prg y | Should -BeExactly 'Y is for Yorick whose head was bashed in.'
    }

    It "Test o alternate" {
        $actual = &$Script:prg o, P, q -f alternate.txt

        $actual[0] | Should -BeExactly 'O is for Orville, who fell in a canyon.'
        $actual[1] | Should -BeExactly 'P is for Paul, strangled by his banyan.'
        $actual[2] | Should -BeExactly 'Q is for Quintanna, flayed in the night.'
    }

    It "Test bad letter" {
        $actual = &$Script:prg 5,CH
        
        $actual[0] | Should -BeExactly 'I do not know "5".'
        $actual[1] | Should -BeExactly 'I do not know "CH".'
    }
}
