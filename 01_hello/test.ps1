Describe "Test for 01_hello" {
    BeforeAll {
        $script:prg = '.\hello.ps1'
    }

    It "test hello.ps1 exits" {
        Test-Path $script:prg | Should -Be $true
    }    

    It "Test runnable" {
        &$script:prg | Should -BeExactly 'Hello, World!'
    }

    It "Test input" {
        foreach ($val in 'Universe', 'Multiverse') {
            foreach ($option in '-n', '-name') {                
                $cmd = "&$script:prg $option $val"
                Invoke-Expression $cmd | Should -BeExactly "Hello, $($val)!"
            }            
        }
    }
}