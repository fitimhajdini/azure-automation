# Step 1: Get all RGs
$allRGs = Get-AzResourceGroup

# Step 2: Loop through each RG
foreach ($rg in $allRGs) {
    $rgName = $rg.ResourceGroupName
    $vmsInRG = Get-AzVM -ResourceGroupName $rgName
    $vmCount = $vmsInRG.Count

    # Step 3: Print with color based on count
    if ($vmCount -gt 0) {
        Write-Host "✅ RG: '$rgName' | VM Count: $vmCount" -ForegroundColor Green
    } else {
        Write-Host "⚪ RG: '$rgName' | VM Count: $vmCount" -ForegroundColor Gray
    }
}
