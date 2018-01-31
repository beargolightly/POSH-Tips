<#

 .Synopsis
 Displays a random tip from the POSHTips collection.

 .Description
 Displays a random tip from the POSHTips collection, optionally displaying a trivial example.

 .Parameter Tip
 TODO: Specific tip number to display.

 .Example
    # Display a random tip from the POSHTips collection.
    Get-POSHTip

#>

function Get-POSHTip {
    param(
        [int] $TipNumber = $tip
        )
    
    $json  = @( Get-ChildItem -Path $PSScriptRoot\POSH-Tips.json )  # -ErrorAction SilentlyContinue

    $tips = Get-Content $json|ConvertFrom-Json
    Write-Output $tips.poshtips[(get-random -Maximum $tips.poshtips.length)].text
    

}