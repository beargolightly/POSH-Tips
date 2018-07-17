Describe "POSH-Tips Get-Help -Examples" {

    Context "Example 1" {

        It "thingy" {
            $thingy | Should Exist
        }

        It "thingy2" {
            $trueorfalse | Should Be $true
        }

        It "backup file is larger than 30GB" {
            $somenumber | Should BeGreaterThan 30
        }

        BeforeEach {
            Some setup code
        }
    }


}