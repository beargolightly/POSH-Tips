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

$private = @(Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'private/*.ps1') -Recurse -ErrorAction Stop)

foreach ($import in @($private)) {
    try {
        . $import.FullName
    }
    catch {
        throw "Unable to dot source [$($import.FullName)]"
    }
}

function Get-POSHTip {
    param(
        [int] $TipNumber = $TipNumber,
        [bool] $MOTD = $false
        )
    
    if ($MOTD) {
        $tip = (getTip 0)
        Write-Output "`nPowershell Tip of the Minute #$($tip.number):`n"
        Write-Output $tip.text "`n"

    } else {
        $tip = getTip ($TipNumber-1)
        return "Tip #$($tip.number): $($tip.text)"
    }


    
}