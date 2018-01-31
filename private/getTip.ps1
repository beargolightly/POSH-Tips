function getTip ($TipNumber) {  
    $json  = @( Get-ChildItem -Path $PSScriptRoot\..\POSH-Tips.json )

    $tips = Get-Content $json|ConvertFrom-Json

    if ($TipNumber -eq 0 ) {       
        $TipNumber = Get-Random -Maximum $tips.poshtips.length
    } 

    $Tip = $tips.poshtips[$TipNumber]
    return $Tip
}