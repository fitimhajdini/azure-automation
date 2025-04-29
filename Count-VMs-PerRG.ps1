# Count-VMs-PerRG.ps1
# Loops through all Resource Groups and counts how many VMs are inside each

$allRGs = Get-AzResourceGroup

foreach ($rg in $allRGs) {
    $rgName = $rg.ResourceGroupName
    $vms = Get-AzVM -ResourceGroupName $rgName
    $vmCount = $vms.Count

    if ($vmCount -gt 0) {
        Write-Host "✅ RG: '$rgName' | VM Count: $vmCount" -ForegroundColor Green
    } else {
        Write-Host "⚪ RG: '$rgName' | VM Count: $vmCount" -ForegroundColor Gray
    }
}
