# Script to change number of times to hit the wire and doing a collision before trying to turn around and potentially get "trapped”. 
# Works with DB275 Worx firmware (Worx 79X)
# -Its a powershell script just run it in your Windows client.
# https://github.com/Michael0yodi/scripts

Param ($sourcefile, $bouncewire=8, $collisionsensor=8)

if($PSBoundParameters.ContainsKey('sourcefile') -eq $false) {
    Write-Host "Usage: $($PSCommandPath) -Sourcefile <filename.bin> -BounceWire <0-255> -CollisionSensor <0-255>"
    return
}

if ( $bouncewire -gt 255 -or $collisionsensor -gt 255){
Write-Host "Maximum value is 255, please enter a lower value"
Break
}

$hexbouncewire = [Convert]::ToString($bouncewire,16)
$hexcollisionsensor = [Convert]::ToString($collisionsensor,16)
Write-Host "Processing $sourcefile Setting Bounces at wire to: $bouncewire ($hexbouncewire) and collision sensor to: $collisionsensor ($hexcollisionsensor)"

#Make the changes
$Ba = Get-Content $sourcefile -Raw -Encoding Byte
$Bs= $Ba.ForEach('ToString', 'X') -join ' '
$hexbouncewire = [Convert]::ToString($bouncewire,16)
$Bs= $Bs-replace '\b78 A 28 9\b(.*)', "78 $hexbouncewire 28 9`$1"
$Bs= $Bs-replace '\b78 8 28 B\b(.*)', "78 $hexcollisionsensor 28 B`$1"

# Write new file
$outFile = Split-Path $sourcefile -leaf
$outPath = Split-Path $sourcefile

[byte[]] $nBa = -split $Bs-replace '^', '0x'
Set-Content "$outPath\MODIFIED _ $outFile" -Encoding Byte -Value $nBa
Write-Host "Saved modified firmware: $outPath\MODIFIED _ $outFile"
