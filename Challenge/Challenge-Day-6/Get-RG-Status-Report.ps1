# Step 1: Get all RGs
$allRGs = Get-AzResourceGroup

# Step 2: Loop through each RG
foreach ($rg in $allRGs) {
    $name = $rg.ResourceGroupName
    $location = $rg.Location
    $state = $rg.ProvisioningState

    # Step 3: Conditional output formatting
    if ($state -eq "Succeeded") {
        Write-Host "✅ Name: '$name', Location: '$location', State: '$state'" -ForegroundColor Green
    } elseif ($state -eq "Updating") {
        Write-Host "🔄 Name: '$name', Location: '$location', State: '$state'" -ForegroundColor Yellow
    } elseif ($state -eq "Failed") {
        Write-Host "❌ Name: '$name', Location: '$location', State: '$state'" -ForegroundColor Red
    } else {
        Write-Host "⚙️ Name: '$name', Location: '$location', State: '$state'" -ForegroundColor Gray
    }
}
