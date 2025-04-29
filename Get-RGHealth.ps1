# Get-RGHealth.ps1
# Lists all Azure Resource Groups with their location and provisioning state

$allRGs = Get-AzResourceGroup

foreach ($rg in $allRGs) {
    $name = $rg.ResourceGroupName
    $location = $rg.location
    $state = $rg.ProvisioningState

    if ($state -eq "Succeeded"){
        Write-Host "✅ RG: '$name' | Location: '$location' | State: '$state'" -ForegroundColor Green
    } elseif ($state -eq "Updating") {
        Write-Host "🔄 RG: '$name' | Location: '$location' | State: '$state'" -ForegroundColor Yellow
    } elseif ($state -eq "Failed") {
        Write-Host "❌ RG: '$name' | Location: '$location' | State: '$state'" -ForegroundColor Red
    } else {
        Write-Host "⚙️ RG: '$name' | Location: '$location' | State: '$state'" -ForegroundColor Gray
    }
}